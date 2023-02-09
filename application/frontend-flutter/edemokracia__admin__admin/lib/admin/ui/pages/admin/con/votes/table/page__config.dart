part of admin.ui.pages.admin.con.votes.table;

class AdminConVotesTableConfig {
  AdminConVotesTableAdminConVotesTableConfig votesTableConfig = AdminConVotesTableAdminConVotesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );

  AdminConVotesTablePageBackAction backAction;
  AdminConVotesTablePageExtendActions extendActions;
  AdminConVotesTablePageTitleGenerator titleGenerator;
}
