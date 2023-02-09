//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/navigation/navigation_registry.dart'
// Template name: lib/ui/navigation/navigation_registry.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:injectable/injectable.dart';
import 'page_navigation.dart';
import '../pages/package.dart';
import 'navigation_store.dart';
import '../routes/router.gr.dart';

@lazySingleton
class NavigationRegistry {
  PageNavigation adminAdminDashboardhomeDashboardPage = PageNavigation(
      route: Routes.adminAdminDashboardhomeDashboardPage,
      isAccess: true,
      pageType: PageType.View,
      page: AdminAdminDashboardhomeDashboardPage,
      crudFunctions: {
        Crud.Read: NavigationStore().getDashboardhome,
        Crud.Create: null,
        Crud.Delete: null,
        Crud.Update: null,
      });
  PageNavigation adminAdminDashboardhomeViewPage = PageNavigation(
      route: Routes.adminAdminDashboardhomeViewPage,
      isAccess: true,
      pageType: PageType.View,
      page: AdminAdminDashboardhomeViewPage,
      crudFunctions: {
        Crud.Read: NavigationStore().getDashboardhome,
        Crud.Create: null,
        Crud.Delete: null,
        Crud.Update: null,
      });

  NavigationRegistry() {
    init();
  }

  void init() {
    adminAdminDashboardhomeDashboardPage.setPages(
      viewPage: adminAdminDashboardhomeDashboardPage,
    );
    adminAdminDashboardhomeViewPage.setPages(
      viewPage: adminAdminDashboardhomeViewPage,
    );
  }

  PageNavigation getPageNavigationByRoute(String route) {
    switch (route) {
      case Routes.adminAdminDashboardhomeDashboardPage:
        return adminAdminDashboardhomeDashboardPage;
      case Routes.adminAdminDashboardhomeViewPage:
        return adminAdminDashboardhomeViewPage;
      default:
        return null;
    }
  }

  static Object pageNavigationArgumentObject({PageNavigation pageNavigation, Object target, Object owner}) {
    switch (pageNavigation.route) {
      case Routes.adminAdminDashboardhomeViewPage:
        return AdminAdminDashboardhomeViewPageArguments(targetStore: target);
      default:
        return null;
    }
  }
}
