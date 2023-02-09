part of admin.ui.pages.admin.admin.debates.update;

class AdminAdminDebatesUpdateConfig {
  AdminAdminDebatesUpdateAdminDebateConsTableConfig consTableConfig = AdminAdminDebatesUpdateAdminDebateConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminDebatesUpdateAdminDebateProsTableConfig prosTableConfig = AdminAdminDebatesUpdateAdminDebateProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminDebatesUpdateAdminDebateCommentsTableConfig commentsTableConfig = AdminAdminDebatesUpdateAdminDebateCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminAdminDebatesUpdateAdminDebateCreatedByTableConfig createdByTableConfig = AdminAdminDebatesUpdateAdminDebateCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminDebatesUpdateAdminDebateIssueTableConfig issueTableConfig = AdminAdminDebatesUpdateAdminDebateIssueTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminDebatesUpdateAdminDebateVoteDefinitionTableConfig voteDefinitionTableConfig = AdminAdminDebatesUpdateAdminDebateVoteDefinitionTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminDebatesUpdatePostTitleChanged postTitleChanged;
  AdminAdminDebatesUpdatePostStatusChanged postStatusChanged;
  AdminAdminDebatesUpdatePostCloseAtChanged postCloseAtChanged;
  AdminAdminDebatesUpdatePostDescriptionChanged postDescriptionChanged;
  AdminAdminDebatesUpdatePageBackAction backAction;
  AdminAdminDebatesUpdatePageExtendActions extendActions;
  AdminAdminDebatesUpdatePageTitleGenerator titleGenerator;
}
