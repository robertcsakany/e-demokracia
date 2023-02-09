//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.resident_county.update;

typedef AdminUserResidentCountyUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserResidentCountyUpdatePageStore pageStore,
});

typedef AdminUserResidentCountyUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserResidentCountyUpdatePageStore pageStore,
  AdminCountyStore targetStore,
});

typedef AdminUserResidentCountyUpdatePostNameChanged = Function(dynamic value,
    {AdminUserResidentCountyUpdatePageStore pageStore, AdminCountyStore targetStore});

typedef AdminUserResidentCountyUpdatePageAdminCountyCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminUserResidentCountyUpdatePageAdminCountyCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminUserResidentCountyUpdatePageStore pageStore,
);

typedef AdminUserResidentCountyUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminUserResidentCountyUpdatePageStore pageStore,
  AdminCountyStore targetStore,
);
