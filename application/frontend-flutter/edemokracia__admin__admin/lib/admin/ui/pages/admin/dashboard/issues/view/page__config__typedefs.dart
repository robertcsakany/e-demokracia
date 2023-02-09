//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.issues.view;

typedef AdminDashboardIssuesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDashboardIssuesViewPageStore pageStore,
});

typedef AdminDashboardIssuesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDashboardIssuesViewPageStore pageStore,
  AdminDashboardStore ownerStore,
  AdminIssueStore targetStore,
});

typedef AdminDashboardIssuesViewPageAdminIssueAttachmentsTableDataCell = DataCell Function(
  AdminIssueAttachmentStore targetStore,
  BuildContext context,
);

typedef AdminDashboardIssuesViewPageAdminIssueAttachmentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueAttachmentStore targetStore,
  AdminDashboardIssuesViewPageStore pageStore,
);
typedef AdminDashboardIssuesViewPageAdminIssueCategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminDashboardIssuesViewPageAdminIssueCategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminDashboardIssuesViewPageStore pageStore,
);
typedef AdminDashboardIssuesViewPageAdminIssueCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDashboardIssuesViewPageAdminIssueCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDashboardIssuesViewPageStore pageStore,
);
typedef AdminDashboardIssuesViewPageAdminIssueDebatesTableDataCell = DataCell Function(
  AdminIssueDebateStore targetStore,
  BuildContext context,
);

typedef AdminDashboardIssuesViewPageAdminIssueDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueDebateStore targetStore,
  AdminDashboardIssuesViewPageStore pageStore,
);

typedef AdminDashboardIssuesViewPageAdminIssueOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDashboardIssuesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDashboardIssuesViewPageStore pageStore,
  AdminIssueStore targetStore,
);
