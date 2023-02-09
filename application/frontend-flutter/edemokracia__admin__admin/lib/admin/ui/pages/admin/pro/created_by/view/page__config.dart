part of admin.ui.pages.admin.pro.created_by.view;

class AdminProCreatedByViewConfig {
  AdminProCreatedByViewAdminUserActivityCitiesTableConfig activityCitiesTableConfig = AdminProCreatedByViewAdminUserActivityCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminProCreatedByViewAdminUserActivityDistrictsTableConfig activityDistrictsTableConfig = AdminProCreatedByViewAdminUserActivityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminProCreatedByViewAdminUserActivityCountiesTableConfig activityCountiesTableConfig = AdminProCreatedByViewAdminUserActivityCountiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminProCreatedByViewAdminUserResidentCityTableConfig residentCityTableConfig = AdminProCreatedByViewAdminUserResidentCityTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminProCreatedByViewAdminUserResidentCountyTableConfig residentCountyTableConfig = AdminProCreatedByViewAdminUserResidentCountyTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminProCreatedByViewAdminUserResidentDistrictTableConfig residentDistrictTableConfig = AdminProCreatedByViewAdminUserResidentDistrictTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminProCreatedByViewPageBackAction backAction;
  AdminProCreatedByViewPageExtendActions extendActions;
  AdminProCreatedByViewPageTitleGenerator titleGenerator;
}
