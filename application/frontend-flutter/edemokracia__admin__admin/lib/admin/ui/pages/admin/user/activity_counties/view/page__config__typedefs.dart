//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.activity_counties.view;

typedef AdminUserActivityCountiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserActivityCountiesViewPageStore pageStore,
});

typedef AdminUserActivityCountiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserActivityCountiesViewPageStore pageStore,
  AdminUserStore ownerStore,
  AdminCountyStore targetStore,
});

typedef AdminUserActivityCountiesViewPageAdminCountyCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminUserActivityCountiesViewPageAdminCountyCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminUserActivityCountiesViewPageStore pageStore,
);

typedef AdminUserActivityCountiesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminUserActivityCountiesViewPageStore pageStore,
  AdminCountyStore targetStore,
);
