//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.debate.comments.view;

typedef DebateCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  DebateCommentsViewPageStore pageStore,
});

typedef DebateCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  DebateCommentsViewPageStore pageStore,
  DebateStore ownerStore,
  CommentStore targetStore,
});

typedef DebateCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  DebateCommentsViewPageStore pageStore,
  CommentStore targetStore,
);
