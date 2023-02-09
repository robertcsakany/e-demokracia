//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.counties.view;

typedef AdminAdminCountiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminCountiesViewPageStore pageStore,
});

typedef AdminAdminCountiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminCountiesViewPageStore pageStore,
  AdminCountyStore targetStore,
});

typedef AdminAdminCountiesViewPageAdminCountyCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminAdminCountiesViewPageAdminCountyCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminAdminCountiesViewPageStore pageStore,
);

typedef AdminAdminCountiesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminCountiesViewPageStore pageStore,
  AdminCountyStore targetStore,
);
