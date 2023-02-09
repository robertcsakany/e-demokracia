//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/guards/auth_guard.dart'
// Template name: lib/ui/guards/auth_guard.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/auth/auth.dart';
import 'package:edemokracia/admin/ui/routes/router.gr.dart' as router;

class AuthGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(ExtendedNavigatorState navigator, String routeName, Object arguments) async {
    var auth = locator<Auth>();
    if (auth.getAuthInfo().isPrincipalAllowed) {
      return true;
    }

    _navigateToErrorPage(navigator, routeName);
    return false;
  }

  void _navigateToErrorPage(ExtendedNavigatorState navigation, String routeName) {
    navigation.push(router.Routes.edemokraciaAdminAdminErrorPage,
        arguments: router.EdemokraciaAdminAdminErrorPageArguments(
          icon: Icon(Icons.error_outline),
          title: 'Unauthorized',
          errorCode: 401,
          errorMessage: 'You don\'t have permission to access the Page below! Please contact the administrator for support!',
          errorDescription: routeName,
        ));
  }
}
