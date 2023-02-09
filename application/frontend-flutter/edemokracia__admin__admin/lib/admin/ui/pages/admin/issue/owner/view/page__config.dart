part of admin.ui.pages.admin.issue.owner.view;

class AdminIssueOwnerViewConfig {
  AdminIssueOwnerViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminIssueOwnerViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueOwnerViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminIssueOwnerViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueOwnerViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminIssueOwnerViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueOwnerViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminIssueOwnerViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueOwnerViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminIssueOwnerViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminIssueOwnerViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminIssueOwnerViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueOwnerViewPageBackAction backAction;
  AdminIssueOwnerViewPageExtendActions extendActions;
  AdminIssueOwnerViewPageTitleGenerator titleGenerator;
}
