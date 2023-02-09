//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.created_by.view;

typedef AdminConCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConCreatedByViewPageStore pageStore,
});

typedef AdminConCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConCreatedByViewPageStore pageStore,
  AdminConStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminConCreatedByViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminConCreatedByViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminConCreatedByViewPageStore pageStore,
);
typedef AdminConCreatedByViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminConCreatedByViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminConCreatedByViewPageStore pageStore,
);
typedef AdminConCreatedByViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminConCreatedByViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminConCreatedByViewPageStore pageStore,
);

typedef AdminConCreatedByViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminConCreatedByViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminConCreatedByViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminConCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminConCreatedByViewPageStore pageStore,
  AdminUserStore targetStore,
);
