part of admin.ui.pages.admin.debate.comments.update;

class AdminDebateCommentsUpdateConfig {
  AdminDebateCommentsUpdateAdminCommentCreatedByTableConfig createdByTableConfig = AdminDebateCommentsUpdateAdminCommentCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateCommentsUpdatePostCommentChanged postCommentChanged;
  AdminDebateCommentsUpdatePageBackAction backAction;
  AdminDebateCommentsUpdatePageExtendActions extendActions;
  AdminDebateCommentsUpdatePageTitleGenerator titleGenerator;
}
