part of admin.ui.pages.admin.user.resident_county.view;

class AdminUserResidentCountyViewConfig {
  AdminUserResidentCountyViewAdminCountyCitiesTableConfig citiesTableConfig = AdminUserResidentCountyViewAdminCountyCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserResidentCountyViewPageBackAction backAction;
  AdminUserResidentCountyViewPageExtendActions extendActions;
  AdminUserResidentCountyViewPageTitleGenerator titleGenerator;
}
