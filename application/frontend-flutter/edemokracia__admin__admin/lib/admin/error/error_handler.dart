//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/error/'+'error_handler.dart'
// Template name: lib/error/error_handler.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.error;

class ErrorHandler {
  static void navigateToErrorPage(dynamic error) {
    if (error is ApiException) {
      NavigationState navigation = locator<NavigationState>();
      navigation.open(router.Routes.edemokraciaAdminAdminErrorPage,
          arguments: router.EdemokraciaAdminAdminErrorPageArguments(
            icon: Icon(Icons.error_outline),
            title: 'Error',
            errorCode: error.code,
            errorMessage: error.message,
            stackTrace: error.stackTrace.toString(),
          ));
    } else {
      NavigationState navigation = locator<NavigationState>();
      navigation.open(router.Routes.edemokraciaAdminAdminErrorPage,
          arguments: router.EdemokraciaAdminAdminErrorPageArguments(
            icon: Icon(Icons.error_outline),
            title: 'Error',
            errorMessage: error.toString(),
          ));
    }
  }

  static void navigateToBuiltInPage() {
    var auth = locator<Auth>();
    NavigationState navigation = locator<NavigationState>();
    if (isNavigateToSettingsPage) {
      navigation.open(router.Routes.edemokraciaAdminAdminSettingsPage);
    } else {
      if (Info.serverDown) {
        navigation.open(router.Routes.edemokraciaAdminAdminErrorPage,
            arguments: router.EdemokraciaAdminAdminErrorPageArguments(
              icon: Icon(Icons.error_outline),
              title: 'Server offline',
              errorMessage: 'Server is unavailable.',
            ));
      } else {
        if (auth.isAuthenticationRequired()) {
          if (!auth.isAccessTokenSet()) {
            navigation.open(router.Routes.edemokraciaAdminAdminErrorPage,
                arguments: router.EdemokraciaAdminAdminErrorPageArguments(
                  icon: Icon(Icons.login),
                  title: 'Login required',
                  errorMessage: 'Please login to continue.',
                ));
          }
        }
      }
    }
  }
}
