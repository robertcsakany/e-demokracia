part of admin.ui.pages.admin.dashboard.debates.view;

class AdminDashboardDebatesViewConfig {
  AdminDashboardDebatesViewAdminDebateConsTableConfig consTableConfig = AdminDashboardDebatesViewAdminDebateConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDashboardDebatesViewAdminDebateProsTableConfig prosTableConfig = AdminDashboardDebatesViewAdminDebateProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDashboardDebatesViewAdminDebateCommentsTableConfig commentsTableConfig = AdminDashboardDebatesViewAdminDebateCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminDashboardDebatesViewAdminDebateCreatedByTableConfig createdByTableConfig = AdminDashboardDebatesViewAdminDebateCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardDebatesViewAdminDebateIssueTableConfig issueTableConfig = AdminDashboardDebatesViewAdminDebateIssueTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );
  AdminDashboardDebatesViewAdminDebateVoteDefinitionTableConfig voteDefinitionTableConfig = AdminDashboardDebatesViewAdminDebateVoteDefinitionTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminDashboardDebatesViewPageBackAction backAction;
  AdminDashboardDebatesViewPageExtendActions extendActions;
  AdminDashboardDebatesViewPageTitleGenerator titleGenerator;
}
