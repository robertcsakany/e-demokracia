part of admin.ui.pages.admin.vote_definition.debate.table;

class AdminVoteDefinitionDebateTableConfig {
  AdminVoteDefinitionDebateTableAdminVoteDefinitionDebateTableConfig debateTableConfig = AdminVoteDefinitionDebateTableAdminVoteDefinitionDebateTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'closeAt',
    sortAsc: true,
  );

  AdminVoteDefinitionDebateTablePageBackAction backAction;
  AdminVoteDefinitionDebateTablePageExtendActions extendActions;
  AdminVoteDefinitionDebateTablePageTitleGenerator titleGenerator;
}
