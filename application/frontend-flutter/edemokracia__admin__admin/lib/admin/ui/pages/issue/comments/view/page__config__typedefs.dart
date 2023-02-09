//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.issue.comments.view;

typedef IssueCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  IssueCommentsViewPageStore pageStore,
});

typedef IssueCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  IssueCommentsViewPageStore pageStore,
  IssueStore ownerStore,
  CommentStore targetStore,
});

typedef IssueCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  IssueCommentsViewPageStore pageStore,
  CommentStore targetStore,
);
