part of admin.ui.pages.admin.debate.created_by.view;

class AdminDebateCreatedByViewConfig {
  AdminDebateCreatedByViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminDebateCreatedByViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDebateCreatedByViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminDebateCreatedByViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDebateCreatedByViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminDebateCreatedByViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDebateCreatedByViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminDebateCreatedByViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDebateCreatedByViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminDebateCreatedByViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDebateCreatedByViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminDebateCreatedByViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateCreatedByViewPageBackAction backAction;
  AdminDebateCreatedByViewPageExtendActions extendActions;
  AdminDebateCreatedByViewPageTitleGenerator titleGenerator;
}
