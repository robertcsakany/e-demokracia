//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.issue.view;

typedef AdminDebateIssueViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateIssueViewPageStore pageStore,
});

typedef AdminDebateIssueViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateIssueViewPageStore pageStore,
  AdminDebateStore ownerStore,
  AdminIssueStore targetStore,
});

typedef AdminDebateIssueViewPageAdminIssueAttachmentsTableDataCell = DataCell Function(
  AdminIssueAttachmentStore targetStore,
  BuildContext context,
);

typedef AdminDebateIssueViewPageAdminIssueAttachmentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueAttachmentStore targetStore,
  AdminDebateIssueViewPageStore pageStore,
);
typedef AdminDebateIssueViewPageAdminIssueCategoriesTableDataCell = DataCell Function(
  AdminIssueCategoryStore targetStore,
  BuildContext context,
);

typedef AdminDebateIssueViewPageAdminIssueCategoriesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueCategoryStore targetStore,
  AdminDebateIssueViewPageStore pageStore,
);
typedef AdminDebateIssueViewPageAdminIssueCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDebateIssueViewPageAdminIssueCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDebateIssueViewPageStore pageStore,
);
typedef AdminDebateIssueViewPageAdminIssueDebatesTableDataCell = DataCell Function(
  AdminIssueDebateStore targetStore,
  BuildContext context,
);

typedef AdminDebateIssueViewPageAdminIssueDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueDebateStore targetStore,
  AdminDebateIssueViewPageStore pageStore,
);

typedef AdminDebateIssueViewPageAdminIssueOwnerTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminDebateIssueViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateIssueViewPageStore pageStore,
  AdminIssueStore targetStore,
);
