part of admin.ui.pages.admin.con.comments.view;

class AdminConCommentsViewConfig {
  AdminConCommentsViewAdminCommentCreatedByTableConfig createdByTableConfig = AdminConCommentsViewAdminCommentCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminConCommentsViewPageBackAction backAction;
  AdminConCommentsViewPageExtendActions extendActions;
  AdminConCommentsViewPageTitleGenerator titleGenerator;
}
