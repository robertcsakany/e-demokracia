part of admin.ui.pages.admin.pro.comments.view;

class AdminProCommentsViewConfig {
  AdminProCommentsViewAdminCommentCreatedByTableConfig createdByTableConfig = AdminProCommentsViewAdminCommentCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminProCommentsViewPageBackAction backAction;
  AdminProCommentsViewPageExtendActions extendActions;
  AdminProCommentsViewPageTitleGenerator titleGenerator;
}
