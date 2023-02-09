//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.resident_county.view;

typedef AdminUserResidentCountyViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserResidentCountyViewPageStore pageStore,
});

typedef AdminUserResidentCountyViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserResidentCountyViewPageStore pageStore,
  AdminUserStore ownerStore,
  AdminCountyStore targetStore,
});

typedef AdminUserResidentCountyViewPageAdminCountyCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminUserResidentCountyViewPageAdminCountyCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminUserResidentCountyViewPageStore pageStore,
);

typedef AdminUserResidentCountyViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminUserResidentCountyViewPageStore pageStore,
  AdminCountyStore targetStore,
);
