part of admin.ui.pages.admin.comment.votes.table;

class AdminCommentVotesTableConfig {
  AdminCommentVotesTableAdminCommentVotesTableConfig votesTableConfig = AdminCommentVotesTableAdminCommentVotesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );

  AdminCommentVotesTablePageBackAction backAction;
  AdminCommentVotesTablePageExtendActions extendActions;
  AdminCommentVotesTablePageTitleGenerator titleGenerator;
}
