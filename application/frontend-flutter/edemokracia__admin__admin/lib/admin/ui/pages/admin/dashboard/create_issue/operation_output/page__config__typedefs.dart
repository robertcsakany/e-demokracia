//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.create_issue.operation_output;

typedef AdminDashboardCreateIssueOperationOutputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
});

typedef AdminDashboardCreateIssueOperationOutputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
  AdminIssueStore targetStore,
});

typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueAttachmentsTableDataCell = DataCell Function(
  AdminIssueAttachmentStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueAttachmentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueAttachmentStore targetStore,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
);
typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueCategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueCategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
);
typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
);
typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueDebatesTableDataCell = DataCell Function(
  AdminIssueDebateStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueDebateStore targetStore,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
);

typedef AdminDashboardCreateIssueOperationOutputPageAdminIssueOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDashboardCreateIssueOperationOutputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDashboardCreateIssueOperationOutputPageStore pageStore,
  AdminIssueStore targetStore,
);
