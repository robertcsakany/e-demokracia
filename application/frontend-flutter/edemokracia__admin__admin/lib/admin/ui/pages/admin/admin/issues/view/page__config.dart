part of admin.ui.pages.admin.admin.issues.view;

class AdminAdminIssuesViewConfig {
  AdminAdminIssuesViewAdminIssueAttachmentsTableConfig attachmentsTableConfig = AdminAdminIssuesViewAdminIssueAttachmentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'link',
    sortAsc: true,
  );
  AdminAdminIssuesViewAdminIssueCategoriesTableConfig categoriesTableConfig = AdminAdminIssuesViewAdminIssueCategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminIssuesViewAdminIssueCommentsTableConfig commentsTableConfig = AdminAdminIssuesViewAdminIssueCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'comment',
    sortAsc: true,
  );
  AdminAdminIssuesViewAdminIssueDebatesTableConfig debatesTableConfig = AdminAdminIssuesViewAdminIssueDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 1,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminIssuesViewAdminIssueOwnerTableConfig ownerTableConfig = AdminAdminIssuesViewAdminIssueOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminIssuesViewPageBackAction backAction;
  AdminAdminIssuesViewPageExtendActions extendActions;
  AdminAdminIssuesViewPageTitleGenerator titleGenerator;
}
