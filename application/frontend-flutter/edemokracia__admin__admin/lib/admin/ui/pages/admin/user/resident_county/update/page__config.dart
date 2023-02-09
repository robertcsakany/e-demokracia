part of admin.ui.pages.admin.user.resident_county.update;

class AdminUserResidentCountyUpdateConfig {
  AdminUserResidentCountyUpdateAdminCountyCitiesTableConfig citiesTableConfig = AdminUserResidentCountyUpdateAdminCountyCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserResidentCountyUpdatePostNameChanged postNameChanged;
  AdminUserResidentCountyUpdatePageBackAction backAction;
  AdminUserResidentCountyUpdatePageExtendActions extendActions;
  AdminUserResidentCountyUpdatePageTitleGenerator titleGenerator;
}
