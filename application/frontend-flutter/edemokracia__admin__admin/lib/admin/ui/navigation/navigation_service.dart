//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/navigation/navigation_service.dart'
// Template name: lib/ui/navigation/navigation_service.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_to_regexp/path_to_regexp.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/ui/routes/router.dart';
import 'page_navigation.dart';

import 'navigation_state.dart';

class NavigationService {
  /// This is a custom workaround for a not yet understood behavour of the
  /// auto_router / Flutter navigation library where it cannot match routes
  /// after page refresh. Once that issues is fixed/gone, this code should
  /// be removed.
  static String getInitialRoute() {
    if (!kIsWeb) {
      return '/';
    }

    String fragment = Uri.base.fragment;

    if (fragment == '/') {
      return fragment;
    }

    bool bookmarkablePageMatched = [...bookmarkableRoutes, ...additionalRoutes].any((element) {
      var regExp = pathToRegExp(element.path);
      return regExp.hasMatch(fragment);
    });

    return bookmarkablePageMatched ? fragment : '/';
  }

  static Future<PageNavigation> whereToGo(PageNavigation pageNavigation, [Object target, Object owner]) async {
    NavigationState navigationState = locator<NavigationState>();
    if (pageNavigation == null) return null;

    if (pageNavigation.pageType == PageType.View) {
      if (target == null) {
        if (pageNavigation.crudFunctions[Crud.Read] != null) {
          var result = await pageNavigation.crudFunctions[Crud.Read]();
          if (result != null) {
            pageNavigation.targetStore = result;
            return pageNavigation;
          }
        }
      }
      return pageNavigation.createPage;
    }

    if (pageNavigation.pageType == PageType.Create) {
      if (target != null) {
        if (pageNavigation.crudFunctions[Crud.Create] != null) {
          var result = await pageNavigation.crudFunctions[Crud.Create](target);
          if (result != null) {
            navigationState.navigateTo(pageNavigation.viewPage.route);
            return pageNavigation.viewPage;
          }
        }
      }
      return pageNavigation.createPage;
    }

    return null;
  }
}
