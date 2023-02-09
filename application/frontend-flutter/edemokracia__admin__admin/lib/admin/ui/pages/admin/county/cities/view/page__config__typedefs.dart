//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.county.cities.view;

typedef AdminCountyCitiesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCountyCitiesViewPageStore pageStore,
});

typedef AdminCountyCitiesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCountyCitiesViewPageStore pageStore,
  AdminCountyStore ownerStore,
  AdminCityStore targetStore,
});

typedef AdminCountyCitiesViewPageAdminCityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminCountyCitiesViewPageAdminCityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminCountyCitiesViewPageStore pageStore,
);

typedef AdminCountyCitiesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminCountyCitiesViewPageStore pageStore,
  AdminCityStore targetStore,
);
