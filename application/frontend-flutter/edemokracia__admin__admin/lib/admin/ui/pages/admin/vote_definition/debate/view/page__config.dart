part of admin.ui.pages.admin.vote_definition.debate.view;

class AdminVoteDefinitionDebateViewConfig {
  AdminVoteDefinitionDebateViewAdminDebateConsTableConfig consTableConfig = AdminVoteDefinitionDebateViewAdminDebateConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminVoteDefinitionDebateViewAdminDebateProsTableConfig prosTableConfig = AdminVoteDefinitionDebateViewAdminDebateProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminVoteDefinitionDebateViewAdminDebateCommentsTableConfig commentsTableConfig = AdminVoteDefinitionDebateViewAdminDebateCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminVoteDefinitionDebateViewAdminDebateCreatedByTableConfig createdByTableConfig = AdminVoteDefinitionDebateViewAdminDebateCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminVoteDefinitionDebateViewAdminDebateIssueTableConfig issueTableConfig = AdminVoteDefinitionDebateViewAdminDebateIssueTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminVoteDefinitionDebateViewAdminDebateVoteDefinitionTableConfig voteDefinitionTableConfig =
      AdminVoteDefinitionDebateViewAdminDebateVoteDefinitionTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminVoteDefinitionDebateViewPageBackAction backAction;
  AdminVoteDefinitionDebateViewPageExtendActions extendActions;
  AdminVoteDefinitionDebateViewPageTitleGenerator titleGenerator;
}
