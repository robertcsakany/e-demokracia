part of admin.ui.pages.admin.admin.debates.table;

class AdminAdminDebatesTableConfig {
  AdminAdminDebatesTableAdminAdminDebatesTableConfig debatesTableConfig = AdminAdminDebatesTableAdminAdminDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'closeAt',
    sortAsc: true,
  );

  AdminAdminDebatesTablePageBackAction backAction;
  AdminAdminDebatesTablePageExtendActions extendActions;
  AdminAdminDebatesTablePageTitleGenerator titleGenerator;
}
