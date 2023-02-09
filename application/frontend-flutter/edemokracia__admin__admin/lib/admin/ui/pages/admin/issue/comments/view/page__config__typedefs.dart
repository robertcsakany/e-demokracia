//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.comments.view;

typedef AdminIssueCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCommentsViewPageStore pageStore,
});

typedef AdminIssueCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCommentsViewPageStore pageStore,
  AdminIssueStore ownerStore,
  AdminCommentStore targetStore,
});

typedef AdminIssueCommentsViewPageAdminCommentCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);

typedef AdminIssueCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCommentsViewPageStore pageStore,
  AdminCommentStore targetStore,
);
