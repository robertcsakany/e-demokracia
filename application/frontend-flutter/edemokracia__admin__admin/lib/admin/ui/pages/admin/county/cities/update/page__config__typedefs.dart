//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.county.cities.update;

typedef AdminCountyCitiesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCountyCitiesUpdatePageStore pageStore,
});

typedef AdminCountyCitiesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCountyCitiesUpdatePageStore pageStore,
  AdminCityStore targetStore,
});

typedef AdminCountyCitiesUpdatePostNameChanged = Function(dynamic value, {AdminCountyCitiesUpdatePageStore pageStore, AdminCityStore targetStore});

typedef AdminCountyCitiesUpdatePageAdminCityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminCountyCitiesUpdatePageAdminCityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminCountyCitiesUpdatePageStore pageStore,
);

typedef AdminCountyCitiesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminCountyCitiesUpdatePageStore pageStore,
  AdminCityStore targetStore,
);
