part of admin.ui.pages.admin.admin.vote_definitions.view;

class AdminAdminVoteDefinitionsViewConfig {
  AdminAdminVoteDefinitionsViewAdminVoteDefinitionVoteSelectAnswerTableConfig voteSelectAnswerTableConfig =
      AdminAdminVoteDefinitionsViewAdminVoteDefinitionVoteSelectAnswerTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminVoteDefinitionsViewPageBackAction backAction;
  AdminAdminVoteDefinitionsViewPageExtendActions extendActions;
  AdminAdminVoteDefinitionsViewPageTitleGenerator titleGenerator;
}
