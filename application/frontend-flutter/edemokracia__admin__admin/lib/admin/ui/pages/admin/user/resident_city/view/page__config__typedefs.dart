//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.resident_city.view;

typedef AdminUserResidentCityViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserResidentCityViewPageStore pageStore,
});

typedef AdminUserResidentCityViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserResidentCityViewPageStore pageStore,
  AdminUserStore ownerStore,
  AdminCityStore targetStore,
});

typedef AdminUserResidentCityViewPageAdminCityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminUserResidentCityViewPageAdminCityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminUserResidentCityViewPageStore pageStore,
);

typedef AdminUserResidentCityViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminUserResidentCityViewPageStore pageStore,
  AdminCityStore targetStore,
);
