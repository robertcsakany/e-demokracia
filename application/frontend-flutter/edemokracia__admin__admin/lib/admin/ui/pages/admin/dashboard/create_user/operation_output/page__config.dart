part of admin.ui.pages.admin.dashboard.create_user.operation_output;

class AdminDashboardCreateUserOperationOutputConfig {
  AdminDashboardCreateUserOperationOutputAdminUserActivityCitiesTableConfig activityCitiesTableConfig =
      AdminDashboardCreateUserOperationOutputAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardCreateUserOperationOutputAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig =
      AdminDashboardCreateUserOperationOutputAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardCreateUserOperationOutputAdminUserActivityCountiesTableConfig activityCountiesTableConfig =
      AdminDashboardCreateUserOperationOutputAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardCreateUserOperationOutputAdminUserResidentCityTableConfig residentCityTableConfig =
      AdminDashboardCreateUserOperationOutputAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardCreateUserOperationOutputAdminUserResidentCountyTableConfig residentCountyTableConfig =
      AdminDashboardCreateUserOperationOutputAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardCreateUserOperationOutputAdminUserResidentDistrictTableConfig residentDistrictTableConfig =
      AdminDashboardCreateUserOperationOutputAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDashboardCreateUserOperationOutputPageBackAction backAction;
  AdminDashboardCreateUserOperationOutputPageExtendActions extendActions;
  AdminDashboardCreateUserOperationOutputPageTitleGenerator titleGenerator;
}
