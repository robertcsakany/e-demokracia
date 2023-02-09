//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.created_by.view;

typedef AdminDebateCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreatedByViewPageStore pageStore,
});

typedef AdminDebateCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateCreatedByViewPageStore pageStore,
  AdminDebateStore ownerStore,
  AdminUserStore targetStore,
});

typedef AdminDebateCreatedByViewPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminDebateCreatedByViewPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminDebateCreatedByViewPageStore pageStore,
);
typedef AdminDebateCreatedByViewPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminDebateCreatedByViewPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminDebateCreatedByViewPageStore pageStore,
);
typedef AdminDebateCreatedByViewPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminDebateCreatedByViewPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminDebateCreatedByViewPageStore pageStore,
);

typedef AdminDebateCreatedByViewPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminDebateCreatedByViewPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminDebateCreatedByViewPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminDebateCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateCreatedByViewPageStore pageStore,
  AdminUserStore targetStore,
);
