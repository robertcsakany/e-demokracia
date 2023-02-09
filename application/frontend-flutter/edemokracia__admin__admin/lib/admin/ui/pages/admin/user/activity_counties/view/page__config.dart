part of admin.ui.pages.admin.user.activity_counties.view;

class AdminUserActivityCountiesViewConfig {
  AdminUserActivityCountiesViewAdminCountyCitiesTableConfig citiesTableConfig = AdminUserActivityCountiesViewAdminCountyCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserActivityCountiesViewPageBackAction backAction;
  AdminUserActivityCountiesViewPageExtendActions extendActions;
  AdminUserActivityCountiesViewPageTitleGenerator titleGenerator;
}
