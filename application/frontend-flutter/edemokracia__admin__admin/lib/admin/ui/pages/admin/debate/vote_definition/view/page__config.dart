part of admin.ui.pages.admin.debate.vote_definition.view;

class AdminDebateVoteDefinitionViewConfig {
  AdminDebateVoteDefinitionViewAdminVoteDefinitionVoteSelectAnswerTableConfig voteSelectAnswerTableConfig =
      AdminDebateVoteDefinitionViewAdminVoteDefinitionVoteSelectAnswerTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminDebateVoteDefinitionViewPageBackAction backAction;
  AdminDebateVoteDefinitionViewPageExtendActions extendActions;
  AdminDebateVoteDefinitionViewPageTitleGenerator titleGenerator;
}
