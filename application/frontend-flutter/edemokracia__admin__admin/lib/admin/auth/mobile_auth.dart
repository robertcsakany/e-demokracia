import 'package:edemokracia/admin/store/package.dart';

import '../oauth.dart';
import './auth.dart';

class MobileAuth implements Auth {
  bool isAuthenticationRequired() {
    return false;
  }

  AdminAdminPrincipalUserStore getPrincipal() {
    return null;
  }

  bool isAuthorized() {
    return false;
  }

  bool isLoggedIn() {
    return false;
  }

  bool isAccessTokenSet() {
    return false;
  }

  Future<String> getAccessToken() async {
    return Future.delayed(
      Duration(seconds: 0),
      () => '',
    );
  }

  Future<void> init(String url) async {}

  logout() {}

  Future<void> login() async {}

  Future<void> manualLogin() async {}

  AuthInfoStore getAuthInfo() {
    return null;
  }
}

Auth getAuth() => MobileAuth();
