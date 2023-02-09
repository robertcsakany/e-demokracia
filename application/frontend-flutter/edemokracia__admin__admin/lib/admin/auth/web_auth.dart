import 'dart:html' as html;

import 'package:dio/dio.dart';
import 'package:flutter_appauth_web/flutter_appauth_web.dart';
import 'package:edemokracia/admin/utilities/rest_request_update_filter_interceptor.dart';
import 'package:edemokracia/admin/error/package.dart';
import 'package:edemokracia/admin/repository/package.dart';
import 'package:edemokracia/admin/rest/package.dart';
import 'package:edemokracia/admin/utilities/package.dart';
import 'package:edemokracia/admin/store/package.dart';
import 'package:flutter_appauth_platform_interface/flutter_appauth_platform_interface.dart';

import '../injector/injector.dart';
import '../oauth.dart';
import './auth.dart';

class WebAuth implements Auth {
  static const AUTH_CODE_VERIFIER_KEY = "auth_code_verifier";
  static const AUTH_CODE_KEY = "auth_code";
  static const AUTH_ACCESS_TOKEN_KEY = "auth_access_token";
  static const AUTH_ACCESS_TOKEN_EXPIRE = "auth_access_token_expire";
  static const AUTH_REFRESH_TOKEN_KEY = "auth_refresh_token";
  static const AUTH_DESTINATION_URL = "auth_destination_url";
  static const GRANT_AUTHORIZATION = "authorization_code";
  static const GRANT_REFRESH = "refresh_token";
  static const APP_NAME_KEY = "judo_ng_app_name";
  static const APP_NAME = "EdemokraciaAdmin";

  JudoMetaDataSecurity _securitySettings = JudoMetaDataSecurity();
  var _authInfo = AuthInfoStore();
  AdminAdminPrincipalUserStore _principal;

  bool isAuthenticationRequired() {
    return _securitySettings.clientId != null;
  }

  AdminAdminPrincipalUserStore getPrincipal() {
    return _principal;
  }

  bool isLoggedIn() {
    return _authInfo.loggedIn;
  }

  bool isAuthorized() {
    return isLoggedIn() && html.window.sessionStorage[APP_NAME_KEY] == APP_NAME;
  }

  bool isAccessTokenSet() {
    return html.window.sessionStorage[AUTH_ACCESS_TOKEN_KEY] != null && html.window.sessionStorage[AUTH_ACCESS_TOKEN_KEY].isNotEmpty;
  }

  Future<String> getAccessToken() async {
    if (!isAccessTokenSet()) {
      var authResponse = AppAuthWebPlugin.processLoginResult(
        html.window.location.href,
        html.window.sessionStorage[AUTH_CODE_VERIFIER_KEY],
      );

      if (authResponse != null) {
        html.window.sessionStorage[AUTH_CODE_KEY] = authResponse.authorizationCode;
        return await _requestToken(GRANT_AUTHORIZATION);
      }
      return null;
    }
    return html.window.sessionStorage[AUTH_ACCESS_TOKEN_KEY];
  }

  Future<void> init(String url) async {
    JudoApiClient _apiClient = locator<JudoApiClient>();

    try {
      await _loadClientMetaData();
      Info.serverDown = false;
    } on ApiException catch (error) {
      if (error.code == 500 && error.message.contains('Connection')) {
        Info.serverDown = true;
      }
    }

    var appNamePresent = html.window.sessionStorage[APP_NAME_KEY];
    if (appNamePresent != null && appNamePresent != APP_NAME) {
      logout();
      return;
    }

    if (isAuthenticationRequired()) {
      locator.unregister(instance: _apiClient);

      // Add the token refresh interceptor for the rest of the api calls
      _apiClient = JudoApiClient(baseOptions: BaseOptions(baseUrl: url));
      _apiClient.getDio().interceptors.add(InterceptorsWrapper(onRequest: (options) async {
        if (!options.path.endsWith('/~meta')) {
          await _refreshToken();
          var accessToken = html.window.sessionStorage[AUTH_ACCESS_TOKEN_KEY];
          options.headers['Authorization'] = 'Bearer $accessToken';
        }
      }));
      _apiClient.getDio().interceptors.add(restRequestUpdateFilterInterceptor);
      locator.registerSingleton<JudoApiClient>(_apiClient);

      if (!isNavigateToSettingsPage) {
        await login();
      }

      var token = await getAccessToken();
      _updateAuthInfo(token);
    } else {
      locator.unregister(instance: _apiClient);
      _apiClient = JudoApiClient(baseOptions: BaseOptions(baseUrl: url));
      _apiClient.getDio().interceptors.add(restRequestUpdateFilterInterceptor);
      locator.registerSingleton<JudoApiClient>(_apiClient);
    }
    await _updatePrincipalAllowed();
  }

  logout() {
    getAuthInfo().setAuthenticated(false);
    html.window.sessionStorage.clear();
    html.window.location.assign(_securitySettings.logoutEndpoint + "?redirect_uri=${Uri.encodeQueryComponent(_calculateRedirectUri())}");
    _securitySettings = JudoMetaDataSecurity();
  }

  Future<void> login() async {
    if (html.window.sessionStorage[AUTH_CODE_VERIFIER_KEY] == null || html.window.sessionStorage[AUTH_CODE_VERIFIER_KEY].isEmpty) {
      var auth = AppAuthWebPlugin();
      var request = AuthorizationTokenRequest(_securitySettings.clientId, _calculateRedirectUri(),
          issuer: _securitySettings.issuer, scopes: [_securitySettings.defaultScopes]);
      await auth.authorizeAndExchangeCode(request);
    }
  }

  Future<void> manualLogin() async {
    html.window.sessionStorage.clear();
    await this.login();
  }

  AuthInfoStore getAuthInfo() {
    return _authInfo;
  }

  String _calculateRedirectUri() {
    var callbackUrl = html.window.location.href; //protocol  + "//" + html.window.location.host;
    var uri = Uri.parse(callbackUrl);
    var strippedUri = Uri(scheme: uri.scheme, userInfo: uri.userInfo, host: uri.host, port: uri.port, path: uri.path);
    return strippedUri.toString();
  }

  _loadClientMetaData() async {
    JudoApiClient apiClient = locator<JudoApiClient>();
    try {
      JudoMetaData meta = await apiClient.edemokraciaAdminAdminMetadata();
      if (meta.security.isNotEmpty) {
        _securitySettings = meta.security.first;
      }
      print("Security settings: $_securitySettings");
    } on ApiException catch (error) {
      print(error);
      throw error;
    }
  }

  Future<String> _requestToken(String grantType) async {
    // print("authResponse: ${authResponse.authorizationCode}");
    var tokenRequest = TokenRequest(_securitySettings.clientId, _calculateRedirectUri(),
        scopes: [_securitySettings.defaultScopes],
        grantType: grantType,
        authorizationCode: html.window.sessionStorage[AUTH_CODE_KEY],
        codeVerifier: html.window.sessionStorage[AUTH_CODE_VERIFIER_KEY],
        refreshToken: grantType == GRANT_REFRESH ? html.window.sessionStorage[AUTH_REFRESH_TOKEN_KEY] : null,
        issuer: _securitySettings.issuer);

    var token = await AppAuthWebPlugin.requestToken(tokenRequest).catchError((onError) {
      if (onError is ArgumentError && onError.message.toString().contains('token_failed')) {
        _authInfo.setAuthenticated(false);
        logout();
        login();
      } else {
        ErrorHandler.navigateToErrorPage(onError);
      }
    });
    if (token != null) {
      html.window.sessionStorage[AUTH_ACCESS_TOKEN_KEY] = token.accessToken;
      html.window.sessionStorage[AUTH_ACCESS_TOKEN_EXPIRE] = token.accessTokenExpirationDateTime.toString();
      html.window.sessionStorage[AUTH_REFRESH_TOKEN_KEY] = token.refreshToken;

      if (html.window.sessionStorage[APP_NAME_KEY] == null) {
        html.window.sessionStorage[APP_NAME_KEY] = APP_NAME;
      }

      _updateAuthInfo(token.accessToken);

      return token.accessToken;
    }
    return null;
  }

  Future<String> _refreshToken() async {
    var tokenExpiration = DateTime.parse(html.window.sessionStorage[AUTH_ACCESS_TOKEN_EXPIRE]);
    var expireIn = tokenExpiration.difference(DateTime.now());

    // print("Token expires in ${expireIn}");

    if (expireIn.inMinutes < 1) {
      return await _requestToken(GRANT_REFRESH);
    }
  }

  _updateAuthInfo(String token) {
    if (token != null) {
      _authInfo.setAuthenticated(true);
      var parsed = parseJwt(token);
      print("Access Token: " + parsed.toString());
      _authInfo.setUserName(parsed['preferred_username']);
      _authInfo.setEmail(parsed['email']);
    } else {
      _authInfo.setAuthenticated(false);
      _authInfo.setUserName(null);
      _authInfo.setEmail(null);
    }
  }

  Future<void> _updatePrincipalAllowed() async {
    AdminAdminRepository _actorRepository = locator<AdminAdminRepository>();

    try {
      _principal = await _actorRepository.getPrincipal();

      /// We are always checking the first Claim in the UI model!
      _authInfo.setIsPrincipalAllowed(_principal.userName.isNotEmpty);
    } catch (error) {
      _authInfo.setIsPrincipalAllowed(false);
    }
  }
}

Auth getAuth() => WebAuth();
