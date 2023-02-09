//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.resident_city.update;

typedef AdminUserResidentCityUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserResidentCityUpdatePageStore pageStore,
});

typedef AdminUserResidentCityUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserResidentCityUpdatePageStore pageStore,
  AdminCityStore targetStore,
});

typedef AdminUserResidentCityUpdatePostNameChanged = Function(dynamic value, {AdminUserResidentCityUpdatePageStore pageStore, AdminCityStore targetStore});

typedef AdminUserResidentCityUpdatePageAdminCityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminUserResidentCityUpdatePageAdminCityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminUserResidentCityUpdatePageStore pageStore,
);

typedef AdminUserResidentCityUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminUserResidentCityUpdatePageStore pageStore,
  AdminCityStore targetStore,
);
