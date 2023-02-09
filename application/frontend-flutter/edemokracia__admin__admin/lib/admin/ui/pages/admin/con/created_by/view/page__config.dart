part of admin.ui.pages.admin.con.created_by.view;

class AdminConCreatedByViewConfig {
  AdminConCreatedByViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminConCreatedByViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminConCreatedByViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminConCreatedByViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminConCreatedByViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminConCreatedByViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminConCreatedByViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminConCreatedByViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminConCreatedByViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminConCreatedByViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminConCreatedByViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminConCreatedByViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminConCreatedByViewPageBackAction backAction;
  AdminConCreatedByViewPageExtendActions extendActions;
  AdminConCreatedByViewPageTitleGenerator titleGenerator;
}
