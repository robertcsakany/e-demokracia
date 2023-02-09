//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/ui/navigation/page_navigation.dart'
// Template name: lib/ui/navigation/page_navigation.dart.hbs
// Application: edemokracia::admin::Admin

import 'navigation_registry.dart';

class PageNavigation {
  final String route;
  final bool isAccess;
  final Type page;
  final PageType pageType;
  PageNavigation viewPage;
  PageNavigation createPage;
  PageNavigation tablePage;
  PageNavigation editPage;
  Object targetStore;
  Object ownerStore;
  final Map<Crud, Function> crudFunctions;

  PageNavigation({this.route, this.isAccess, this.pageType, this.page, this.viewPage, this.createPage, this.tablePage, this.editPage, this.crudFunctions});

  void setPages({PageNavigation viewPage, PageNavigation createPage, PageNavigation tablePage, PageNavigation editPage}) {
    this.viewPage = viewPage;
    this.createPage = createPage;
    this.tablePage = tablePage;
    this.editPage = editPage;
  }

  Object getPageArgumentObject() {
    return NavigationRegistry.pageNavigationArgumentObject(pageNavigation: this, target: targetStore, owner: ownerStore);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is PageNavigation && runtimeType == other.runtimeType && route == other.route && page == other.page;

  @override
  int get hashCode => route.hashCode ^ pageType.hashCode ^ page.hashCode;
}

enum PageType { View, Edit, Create, Table }

enum Crud { Create, Read, Update, Delete }
