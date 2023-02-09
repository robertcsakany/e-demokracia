part of admin.ui.pages.admin.admin.counties.update;

class AdminAdminCountiesUpdateConfig {
  AdminAdminCountiesUpdateAdminCountyCitiesTableConfig citiesTableConfig = AdminAdminCountiesUpdateAdminCountyCitiesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'name',
    sortAsc: true,
  );

  AdminAdminCountiesUpdatePostNameChanged postNameChanged;
  AdminAdminCountiesUpdatePageBackAction backAction;
  AdminAdminCountiesUpdatePageExtendActions extendActions;
  AdminAdminCountiesUpdatePageTitleGenerator titleGenerator;
}
