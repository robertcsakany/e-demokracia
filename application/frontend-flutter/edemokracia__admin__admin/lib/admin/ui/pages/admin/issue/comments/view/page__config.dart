part of admin.ui.pages.admin.issue.comments.view;

class AdminIssueCommentsViewConfig {
  AdminIssueCommentsViewAdminCommentCreatedByTableConfig createdByTableConfig = AdminIssueCommentsViewAdminCommentCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminIssueCommentsViewPageBackAction backAction;
  AdminIssueCommentsViewPageExtendActions extendActions;
  AdminIssueCommentsViewPageTitleGenerator titleGenerator;
}
