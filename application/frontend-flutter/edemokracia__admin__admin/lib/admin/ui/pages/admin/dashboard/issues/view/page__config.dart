part of admin.ui.pages.admin.dashboard.issues.view;

class AdminDashboardIssuesViewConfig {
  AdminDashboardIssuesViewAdminIssueAttachmentsTableConfig attachmentsTableConfig = AdminDashboardIssuesViewAdminIssueAttachmentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'link',
    sortAsc: true,
  );
  AdminDashboardIssuesViewAdminIssueCategoriesTableConfig categoriesTableConfig = AdminDashboardIssuesViewAdminIssueCategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDashboardIssuesViewAdminIssueCommentsTableConfig commentsTableConfig = AdminDashboardIssuesViewAdminIssueCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'comment',
    sortAsc: true,
  );
  AdminDashboardIssuesViewAdminIssueDebatesTableConfig debatesTableConfig = AdminDashboardIssuesViewAdminIssueDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 1,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDashboardIssuesViewAdminIssueOwnerTableConfig ownerTableConfig = AdminDashboardIssuesViewAdminIssueOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDashboardIssuesViewPageBackAction backAction;
  AdminDashboardIssuesViewPageExtendActions extendActions;
  AdminDashboardIssuesViewPageTitleGenerator titleGenerator;
}
