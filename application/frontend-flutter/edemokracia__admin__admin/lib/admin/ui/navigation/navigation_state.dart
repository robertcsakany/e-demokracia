//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/navigation/navigation_state.dart'
// Template name: lib/ui/navigation/navigation_state.dart.hbs
// Application: edemokracia::admin::Admin

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:injectable/injectable.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';
import 'package:edemokracia/admin/ui/routes/router.gr.dart';
import 'package:edemokracia/admin/injector/injector.dart';
import 'package:edemokracia/admin/ui/pages/package.dart';
import 'package:edemokracia/admin/ui/utilities/package.dart';
import 'navigation_registry.dart';
import 'navigation_service.dart';
import 'page_navigation.dart';
import 'package:mobx/mobx.dart';

part 'navigation_state.g.dart';

@lazySingleton
class NavigationState extends _NavigationState with _$NavigationState {}

abstract class _NavigationState with Store {
  final navigatorKey = GlobalKey<ExtendedNavigatorState>();
  final scaffoldKey = GlobalKey<ScaffoldState>(); // rethink this key place

  String currentRoute = Routes.adminAdminDashboardhomeDashboardPage;
  PageNavigation currentPageNavigation;
  final List<String> stack = [];
  final List<PageActions> actionStack = [];

  @observable
  ObservableList<BreadCrumbItem> breadcrumbItems = [BreadCrumbItem(content: Icon(Icons.home))].asObservable();

  @observable
  String currentTitle = '';

  @action
  void setCurrentTitle(String newTitle) => currentTitle = newTitle;

  @observable
  PageActions currentPageActions = PageActions();

  @action
  void setCurrentPageActions(PageActions pageActions) => currentPageActions = pageActions;

  bool isMenuCollapsed(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 0 && MediaQuery.of(context).size.width <= 599) {
      return true;
    }
    if (MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width <= 839) {
      return true;
    }
    if (MediaQuery.of(context).size.width >= 840 && MediaQuery.of(context).size.width <= 32767) {
      return false;
    }
    return false;
  }

  void navigateTo(String route) async {
    NavigationRegistry navigationRegistry = locator<NavigationRegistry>();
    if (currentRoute != route) {
      currentRoute = route;
      currentPageNavigation = navigationRegistry.getPageNavigationByRoute(currentRoute);

      breadcrumbItems.clear();
      breadcrumbItems.add(BreadCrumbItem(content: Icon(Icons.home)));

      stack.clear();
      actionStack.clear();

      var targetPageNavigation = await NavigationService.whereToGo(currentPageNavigation);
      if (targetPageNavigation != null) {
        currentRoute = targetPageNavigation.route;
        navigatorKey.currentState.pushAndRemoveUntil(targetPageNavigation.route, (route) => false, arguments: targetPageNavigation.getPageArgumentObject());
        return;
      } else if (targetPageNavigation == null && currentPageNavigation?.pageType == PageType.View) {
        // if create page is not existing, but we need to go to the empty view page
        currentRoute = Routes.edemokraciaAdminAdminBlankPage;
        currentTitle = 'Empty';
        navigatorKey.currentState.pushAndRemoveUntil(Routes.edemokraciaAdminAdminBlankPage, (route) => false);
        return;
      }

      navigatorKey.currentState.pushAndRemoveUntil(route, (route) => false);
    }
  }

  @optionalTypeArgs
  Future<T> open<T extends Object>(String routeName, {Object arguments, Map<String, String> queryParams, OnNavigationRejected onReject}) async {
    currentRoute = routeName;

    breadcrumbItems.add(BreadCrumbItem(
      content: Text(
        currentTitle,
      ),
    ));

    stack.add(currentTitle);
    actionStack.add(currentPageActions);
    return await navigatorKey.currentState.push(routeName, arguments: arguments, queryParams: queryParams, onReject: onReject);
  }

  @optionalTypeArgs
  void close<T extends Object>([T result, bool access = false]) async {
    NavigationRegistry navigationRegistry = locator<NavigationRegistry>();
    currentPageNavigation = navigationRegistry.getPageNavigationByRoute(currentRoute);

    var targetPageNavigation = await NavigationService.whereToGo(currentPageNavigation, result);
    if (targetPageNavigation != null) {
      navigateTo(targetPageNavigation.route);
    }

    if (navigatorKey.currentState.canPop()) {
      currentTitle = stack.removeLast();
      breadcrumbItems.removeLast();
      currentPageActions = actionStack.removeLast();
      navigatorKey.currentState.pop<T>(result);
    }
  }
}
