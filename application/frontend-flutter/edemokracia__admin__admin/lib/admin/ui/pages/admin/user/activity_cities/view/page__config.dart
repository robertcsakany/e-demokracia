part of admin.ui.pages.admin.user.activity_cities.view;

class AdminUserActivityCitiesViewConfig {
  AdminUserActivityCitiesViewAdminCityDistrictsTableConfig districtsTableConfig = AdminUserActivityCitiesViewAdminCityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserActivityCitiesViewPageBackAction backAction;
  AdminUserActivityCitiesViewPageExtendActions extendActions;
  AdminUserActivityCitiesViewPageTitleGenerator titleGenerator;
}
