part of admin.ui.pages.admin.pro.votes.table;

class AdminProVotesTableConfig {
  AdminProVotesTableAdminProVotesTableConfig votesTableConfig = AdminProVotesTableAdminProVotesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );

  AdminProVotesTablePageBackAction backAction;
  AdminProVotesTablePageExtendActions extendActions;
  AdminProVotesTablePageTitleGenerator titleGenerator;
}
