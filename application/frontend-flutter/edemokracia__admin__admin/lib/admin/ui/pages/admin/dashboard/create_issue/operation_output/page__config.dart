part of admin.ui.pages.admin.dashboard.create_issue.operation_output;

class AdminDashboardCreateIssueOperationOutputConfig {
  AdminDashboardCreateIssueOperationOutputAdminIssueAttachmentsTableConfig attachmentsTableConfig =
      AdminDashboardCreateIssueOperationOutputAdminIssueAttachmentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'link',
    sortAsc: true,
  );
  AdminDashboardCreateIssueOperationOutputAdminIssueCategoriesTableConfig categoriesTableConfig =
      AdminDashboardCreateIssueOperationOutputAdminIssueCategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDashboardCreateIssueOperationOutputAdminIssueCommentsTableConfig commentsTableConfig =
      AdminDashboardCreateIssueOperationOutputAdminIssueCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'comment',
    sortAsc: true,
  );
  AdminDashboardCreateIssueOperationOutputAdminIssueDebatesTableConfig debatesTableConfig =
      AdminDashboardCreateIssueOperationOutputAdminIssueDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 1,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDashboardCreateIssueOperationOutputAdminIssueOwnerTableConfig ownerTableConfig = AdminDashboardCreateIssueOperationOutputAdminIssueOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDashboardCreateIssueOperationOutputPageBackAction backAction;
  AdminDashboardCreateIssueOperationOutputPageExtendActions extendActions;
  AdminDashboardCreateIssueOperationOutputPageTitleGenerator titleGenerator;
}
