part of admin.ui.pages.admin.admin.counties.view;

class AdminAdminCountiesViewConfig {
  AdminAdminCountiesViewAdminCountyCitiesTableConfig citiesTableConfig = AdminAdminCountiesViewAdminCountyCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminAdminCountiesViewPageBackAction backAction;
  AdminAdminCountiesViewPageExtendActions extendActions;
  AdminAdminCountiesViewPageTitleGenerator titleGenerator;
}
