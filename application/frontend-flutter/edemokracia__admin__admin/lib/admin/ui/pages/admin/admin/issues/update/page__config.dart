part of admin.ui.pages.admin.admin.issues.update;

class AdminAdminIssuesUpdateConfig {
  AdminAdminIssuesUpdateAdminIssueAttachmentsTableConfig attachmentsTableConfig = AdminAdminIssuesUpdateAdminIssueAttachmentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'link',
    sortAsc: true,
  );
  AdminAdminIssuesUpdateAdminIssueCategoriesTableConfig categoriesTableConfig = AdminAdminIssuesUpdateAdminIssueCategoriesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminIssuesUpdateAdminIssueCommentsTableConfig commentsTableConfig = AdminAdminIssuesUpdateAdminIssueCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'comment',
    sortAsc: true,
  );
  AdminAdminIssuesUpdateAdminIssueDebatesTableConfig debatesTableConfig = AdminAdminIssuesUpdateAdminIssueDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 1,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminIssuesUpdateAdminIssueOwnerTableConfig ownerTableConfig = AdminAdminIssuesUpdateAdminIssueOwnerTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminAdminIssuesUpdatePostTitleChanged postTitleChanged;
  AdminAdminIssuesUpdatePostStatusChanged postStatusChanged;
  AdminAdminIssuesUpdatePostDescriptionChanged postDescriptionChanged;
  AdminAdminIssuesUpdatePageBackAction backAction;
  AdminAdminIssuesUpdatePageExtendActions extendActions;
  AdminAdminIssuesUpdatePageTitleGenerator titleGenerator;
}
