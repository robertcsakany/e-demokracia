part of admin.ui.pages.admin.admin.users.table;

class AdminAdminUsersTableConfig {
  AdminAdminUsersTableAdminAdminUsersTableConfig usersTableConfig = AdminAdminUsersTableAdminAdminUsersTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'userName',
    sortAsc: true,
  );

  AdminAdminUsersTablePageBackAction backAction;
  AdminAdminUsersTablePageExtendActions extendActions;
  AdminAdminUsersTablePageTitleGenerator titleGenerator;
}
