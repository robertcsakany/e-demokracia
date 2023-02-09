import 'package:flutter/material.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';

import 'package:edemokracia/admin/auth/auth.dart';
import 'package:edemokracia/admin/error/package.dart';
import 'package:edemokracia/admin/l10n/app_localizations.dart';
import 'package:edemokracia/admin/ui/navigation/navigation_state.dart';
import 'package:edemokracia/admin/utilities/package.dart';

Theme navigationItemToTheme(
  NavigationItem navigationItem,
  BuildContext context,
  Auth auth,
  NavigationState navigationState,
  String selected,
  Function setState,
) {
  if (navigationItem.isGroup == true) {
    return _navigationGroupToTheme(navigationItem, context, auth, navigationState, selected, setState);
  }
  return _navigationItemToTheme(navigationItem, context, auth, navigationState, selected, setState);
}

Theme _navigationGroupToTheme(
        NavigationItem navigationItem, BuildContext context, Auth auth, NavigationState navigationState, String selected, Function setState) =>
    Theme(
      data: JudoComponentCustomizer.get().getMenuTheme(Theme.of(context)),
      child: Column(
        children: [
          ListTile(
            title: Text(
              AppLocalizations.of(context).lookUpValue(context, navigationItem.title),
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
            selected: false,
          ),
          Column(
            children: (navigationItem.items != null && navigationItem.items.length > 0)
                ? navigationItem.items.map((e) => _navigationItemToTheme(e, context, auth, navigationState, selected, setState)).toList()
                : [],
          ),
        ],
      ),
    );

Theme _navigationItemToTheme(
        NavigationItem navigationItem, BuildContext context, Auth auth, NavigationState navigationState, String selected, Function setState) =>
    Theme(
      data: JudoComponentCustomizer.get().getMenuTheme(Theme.of(context)),
      child: ListTile(
        leading: navigationItem.leading,
        title: Text(AppLocalizations.of(context).lookUpValue(context, navigationItem.title)),
        onTap: () {
          if (Info.serverDown) {
            ErrorHandler.navigateToBuiltInPage();
          } else {
            if (auth.isAuthenticationRequired() && !auth.isLoggedIn()) {
              auth.manualLogin();
            } else {
              navigationState.navigateTo(navigationItem.route);
              setState(() => {});
            }
          }
        },
        selected: navigationItem.route == selected,
      ),
    );
