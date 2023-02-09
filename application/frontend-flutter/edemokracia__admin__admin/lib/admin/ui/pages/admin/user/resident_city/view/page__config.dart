part of admin.ui.pages.admin.user.resident_city.view;

class AdminUserResidentCityViewConfig {
  AdminUserResidentCityViewAdminCityDistrictsTableConfig districtsTableConfig = AdminUserResidentCityViewAdminCityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserResidentCityViewPageBackAction backAction;
  AdminUserResidentCityViewPageExtendActions extendActions;
  AdminUserResidentCityViewPageTitleGenerator titleGenerator;
}
