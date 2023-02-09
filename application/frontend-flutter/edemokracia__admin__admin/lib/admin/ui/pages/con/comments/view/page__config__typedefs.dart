//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.con.comments.view;

typedef ConCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ConCommentsViewPageStore pageStore,
});

typedef ConCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ConCommentsViewPageStore pageStore,
  ConStore ownerStore,
  CommentStore targetStore,
});

typedef ConCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  ConCommentsViewPageStore pageStore,
  CommentStore targetStore,
);
