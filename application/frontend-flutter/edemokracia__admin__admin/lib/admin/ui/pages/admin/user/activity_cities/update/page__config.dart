part of admin.ui.pages.admin.user.activity_cities.update;

class AdminUserActivityCitiesUpdateConfig {
  AdminUserActivityCitiesUpdateAdminCityDistrictsTableConfig districtsTableConfig = AdminUserActivityCitiesUpdateAdminCityDistrictsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserActivityCitiesUpdatePostNameChanged postNameChanged;
  AdminUserActivityCitiesUpdatePageBackAction backAction;
  AdminUserActivityCitiesUpdatePageExtendActions extendActions;
  AdminUserActivityCitiesUpdatePageTitleGenerator titleGenerator;
}
