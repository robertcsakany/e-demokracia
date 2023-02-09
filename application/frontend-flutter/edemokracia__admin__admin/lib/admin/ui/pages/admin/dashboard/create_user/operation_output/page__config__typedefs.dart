//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.create_user.operation_output;

typedef AdminDashboardCreateUserOperationOutputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateUserOperationOutputPageStore pageStore,
});

typedef AdminDashboardCreateUserOperationOutputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDashboardCreateUserOperationOutputPageStore pageStore,
  AdminUserStore targetStore,
});

typedef AdminDashboardCreateUserOperationOutputPageAdminUserActivityCitiesTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateUserOperationOutputPageAdminUserActivityCitiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCityStore targetStore,
  AdminDashboardCreateUserOperationOutputPageStore pageStore,
);
typedef AdminDashboardCreateUserOperationOutputPageAdminUserActivityDistrictsTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateUserOperationOutputPageAdminUserActivityDistrictsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDistrictStore targetStore,
  AdminDashboardCreateUserOperationOutputPageStore pageStore,
);
typedef AdminDashboardCreateUserOperationOutputPageAdminUserActivityCountiesTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateUserOperationOutputPageAdminUserActivityCountiesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCountyStore targetStore,
  AdminDashboardCreateUserOperationOutputPageStore pageStore,
);

typedef AdminDashboardCreateUserOperationOutputPageAdminUserResidentCityTableDataCell = DataCell Function(
  AdminCityStore targetStore,
  BuildContext context,
);
typedef AdminDashboardCreateUserOperationOutputPageAdminUserResidentCountyTableDataCell = DataCell Function(
  AdminCountyStore targetStore,
  BuildContext context,
);
typedef AdminDashboardCreateUserOperationOutputPageAdminUserResidentDistrictTableDataCell = DataCell Function(
  AdminDistrictStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateUserOperationOutputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDashboardCreateUserOperationOutputPageStore pageStore,
  AdminUserStore targetStore,
);
