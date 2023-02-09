//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.issues.view;

typedef AdminAdminIssuesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminIssuesViewPageStore pageStore,
});

typedef AdminAdminIssuesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminIssuesViewPageStore pageStore,
  AdminIssueStore targetStore,
});

typedef AdminAdminIssuesViewPageAdminIssueAttachmentsTableDataCell = DataCell Function(
  AdminIssueAttachmentStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesViewPageAdminIssueAttachmentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueAttachmentStore targetStore,
  AdminAdminIssuesViewPageStore pageStore,
);
typedef AdminAdminIssuesViewPageAdminIssueCategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesViewPageAdminIssueCategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminAdminIssuesViewPageStore pageStore,
);
typedef AdminAdminIssuesViewPageAdminIssueCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesViewPageAdminIssueCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminAdminIssuesViewPageStore pageStore,
);
typedef AdminAdminIssuesViewPageAdminIssueDebatesTableDataCell = DataCell Function(
  AdminIssueDebateStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesViewPageAdminIssueDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueDebateStore targetStore,
  AdminAdminIssuesViewPageStore pageStore,
);

typedef AdminAdminIssuesViewPageAdminIssueOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminAdminIssuesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminIssuesViewPageStore pageStore,
  AdminIssueStore targetStore,
);
