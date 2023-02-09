part of admin.ui.pages.admin.county.cities.view;

class AdminCountyCitiesViewConfig {
  AdminCountyCitiesViewAdminCityDistrictsTableConfig districtsTableConfig = AdminCountyCitiesViewAdminCityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminCountyCitiesViewPageBackAction backAction;
  AdminCountyCitiesViewPageExtendActions extendActions;
  AdminCountyCitiesViewPageTitleGenerator titleGenerator;
}
