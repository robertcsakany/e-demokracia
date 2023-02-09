part of admin.ui.pages.admin.user.votes.table;

class AdminUserVotesTableConfig {
  AdminUserVotesTableAdminUserVotesTableConfig votesTableConfig = AdminUserVotesTableAdminUserVotesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );

  AdminUserVotesTablePageBackAction backAction;
  AdminUserVotesTablePageExtendActions extendActions;
  AdminUserVotesTablePageTitleGenerator titleGenerator;
}
