part of admin.ui.pages.admin.admin.vote_definitions.table;

class AdminAdminVoteDefinitionsTableConfig {
  AdminAdminVoteDefinitionsTableAdminAdminVoteDefinitionsTableConfig voteDefinitionsTableConfig =
      AdminAdminVoteDefinitionsTableAdminAdminVoteDefinitionsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminVoteDefinitionsTableAdminVoteDefinitionVoteSelectAnswerTableConfig voteSelectAnswerTableConfig =
      AdminAdminVoteDefinitionsTableAdminVoteDefinitionVoteSelectAnswerTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminVoteDefinitionsTablePageBackAction backAction;
  AdminAdminVoteDefinitionsTablePageExtendActions extendActions;
  AdminAdminVoteDefinitionsTablePageTitleGenerator titleGenerator;
}
