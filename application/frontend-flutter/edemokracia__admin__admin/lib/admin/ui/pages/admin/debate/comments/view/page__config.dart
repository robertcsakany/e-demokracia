part of admin.ui.pages.admin.debate.comments.view;

class AdminDebateCommentsViewConfig {
  AdminDebateCommentsViewAdminCommentCreatedByTableConfig createdByTableConfig = AdminDebateCommentsViewAdminCommentCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateCommentsViewPageBackAction backAction;
  AdminDebateCommentsViewPageExtendActions extendActions;
  AdminDebateCommentsViewPageTitleGenerator titleGenerator;
}
