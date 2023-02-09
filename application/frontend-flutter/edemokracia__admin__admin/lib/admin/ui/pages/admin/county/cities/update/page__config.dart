part of admin.ui.pages.admin.county.cities.update;

class AdminCountyCitiesUpdateConfig {
  AdminCountyCitiesUpdateAdminCityDistrictsTableConfig districtsTableConfig = AdminCountyCitiesUpdateAdminCityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminCountyCitiesUpdatePostNameChanged postNameChanged;
  AdminCountyCitiesUpdatePageBackAction backAction;
  AdminCountyCitiesUpdatePageExtendActions extendActions;
  AdminCountyCitiesUpdatePageTitleGenerator titleGenerator;
}
