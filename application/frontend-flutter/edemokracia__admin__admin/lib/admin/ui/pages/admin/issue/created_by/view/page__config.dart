part of admin.ui.pages.admin.issue.created_by.view;

class AdminIssueCreatedByViewConfig {
  AdminIssueCreatedByViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminIssueCreatedByViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCreatedByViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminIssueCreatedByViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCreatedByViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminIssueCreatedByViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCreatedByViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminIssueCreatedByViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCreatedByViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminIssueCreatedByViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueCreatedByViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminIssueCreatedByViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCreatedByViewPageBackAction backAction;
  AdminIssueCreatedByViewPageExtendActions extendActions;
  AdminIssueCreatedByViewPageTitleGenerator titleGenerator;
}
