part of admin.ui.pages.admin.debate.issue.view;

class AdminDebateIssueViewConfig {
  AdminDebateIssueViewAdminIssueAttachmentsTableConfig attachmentsTableConfig = AdminDebateIssueViewAdminIssueAttachmentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'link',
    sortAsc: true,
  );
  AdminDebateIssueViewAdminIssueCategoriesTableConfig categoriesTableConfig = AdminDebateIssueViewAdminIssueCategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateIssueViewAdminIssueCommentsTableConfig commentsTableConfig = AdminDebateIssueViewAdminIssueCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'comment',
    sortAsc: true,
  );
  AdminDebateIssueViewAdminIssueDebatesTableConfig debatesTableConfig = AdminDebateIssueViewAdminIssueDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 1,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateIssueViewAdminIssueOwnerTableConfig ownerTableConfig = AdminDebateIssueViewAdminIssueOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateIssueViewPageBackAction backAction;
  AdminDebateIssueViewPageExtendActions extendActions;
  AdminDebateIssueViewPageTitleGenerator titleGenerator;
}
