//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/'+'oauth.dart'
// Template name: lib/oauth.dart.hbs
// Application: edemokracia::admin::Admin

// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
import 'package:mobx/mobx.dart';

part 'oauth.g.dart';

class AuthInfoStore extends _AuthInfoStore with _$AuthInfoStore {
  AuthInfoStore() : super();
}

abstract class _AuthInfoStore with Store {
  @observable
  bool authenticated;

  @observable
  String userName;

  @observable
  String email;

  @observable
  bool isPrincipalAllowed;

  @computed
  bool get loggedIn {
    return authenticated != null && authenticated;
  }

  @action
  void setAuthenticated(bool authenticated) {
    this.authenticated = authenticated;
  }

  @action
  void setUserName(String userName) {
    this.userName = userName;
  }

  @action
  void setEmail(String email) {
    this.email = email;
  }

  @action
  void setIsPrincipalAllowed(bool allowed) {
    this.isPrincipalAllowed = allowed;
  }
}

Map<String, dynamic> parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }

  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    print('invalid payload');
  }

  return payloadMap;
}

String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      print('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}
