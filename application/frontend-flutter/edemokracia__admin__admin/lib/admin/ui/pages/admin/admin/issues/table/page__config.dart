part of admin.ui.pages.admin.admin.issues.table;

class AdminAdminIssuesTableConfig {
  AdminAdminIssuesTableAdminAdminIssuesTableConfig issuesTableConfig = AdminAdminIssuesTableAdminAdminIssuesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminIssuesTablePageBackAction backAction;
  AdminAdminIssuesTablePageExtendActions extendActions;
  AdminAdminIssuesTablePageTitleGenerator titleGenerator;
}
