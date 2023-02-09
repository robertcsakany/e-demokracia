//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.activity_cities.view;

typedef AdminUserActivityCitiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserActivityCitiesViewPageStore pageStore,
});

typedef AdminUserActivityCitiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserActivityCitiesViewPageStore pageStore,
  AdminUserStore ownerStore,
  AdminCityStore targetStore,
});

typedef AdminUserActivityCitiesViewPageAdminCityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminUserActivityCitiesViewPageAdminCityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminUserActivityCitiesViewPageStore pageStore,
);

typedef AdminUserActivityCitiesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminUserActivityCitiesViewPageStore pageStore,
  AdminCityStore targetStore,
);
