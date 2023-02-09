part of admin.ui.pages.admin.user.activity_counties.update;

class AdminUserActivityCountiesUpdateConfig {
  AdminUserActivityCountiesUpdateAdminCountyCitiesTableConfig citiesTableConfig = AdminUserActivityCountiesUpdateAdminCountyCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminUserActivityCountiesUpdatePostNameChanged postNameChanged;
  AdminUserActivityCountiesUpdatePageBackAction backAction;
  AdminUserActivityCountiesUpdatePageExtendActions extendActions;
  AdminUserActivityCountiesUpdatePageTitleGenerator titleGenerator;
}
