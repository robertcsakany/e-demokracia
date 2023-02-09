part of admin.ui.pages.admin.admin.debates.view;

class AdminAdminDebatesViewConfig {
  AdminAdminDebatesViewAdminDebateConsTableConfig consTableConfig = AdminAdminDebatesViewAdminDebateConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminDebatesViewAdminDebateProsTableConfig prosTableConfig = AdminAdminDebatesViewAdminDebateProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminDebatesViewAdminDebateCommentsTableConfig commentsTableConfig = AdminAdminDebatesViewAdminDebateCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminAdminDebatesViewAdminDebateCreatedByTableConfig createdByTableConfig = AdminAdminDebatesViewAdminDebateCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminDebatesViewAdminDebateIssueTableConfig issueTableConfig = AdminAdminDebatesViewAdminDebateIssueTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminAdminDebatesViewAdminDebateVoteDefinitionTableConfig voteDefinitionTableConfig = AdminAdminDebatesViewAdminDebateVoteDefinitionTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminDebatesViewPageBackAction backAction;
  AdminAdminDebatesViewPageExtendActions extendActions;
  AdminAdminDebatesViewPageTitleGenerator titleGenerator;
}
