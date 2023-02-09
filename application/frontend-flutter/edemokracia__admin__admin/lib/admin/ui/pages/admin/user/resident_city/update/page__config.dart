part of admin.ui.pages.admin.user.resident_city.update;

class AdminUserResidentCityUpdateConfig {
  AdminUserResidentCityUpdateAdminCityDistrictsTableConfig districtsTableConfig = AdminUserResidentCityUpdateAdminCityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserResidentCityUpdatePostNameChanged postNameChanged;
  AdminUserResidentCityUpdatePageBackAction backAction;
  AdminUserResidentCityUpdatePageExtendActions extendActions;
  AdminUserResidentCityUpdatePageTitleGenerator titleGenerator;
}
