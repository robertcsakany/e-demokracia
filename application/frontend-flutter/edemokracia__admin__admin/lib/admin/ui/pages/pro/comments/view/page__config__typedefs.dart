//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.pro.comments.view;

typedef ProCommentsViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ProCommentsViewPageStore pageStore,
});

typedef ProCommentsViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ProCommentsViewPageStore pageStore,
  ProStore ownerStore,
  CommentStore targetStore,
});

typedef ProCommentsViewPageTitleGenerator = String Function(
  BuildContext context,
  ProCommentsViewPageStore pageStore,
  CommentStore targetStore,
);
