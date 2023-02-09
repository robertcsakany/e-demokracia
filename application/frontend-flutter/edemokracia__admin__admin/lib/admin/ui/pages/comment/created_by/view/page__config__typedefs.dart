//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.comment.created_by.view;

typedef CommentCreatedByViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  CommentCreatedByViewPageStore pageStore,
});

typedef CommentCreatedByViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  CommentCreatedByViewPageStore pageStore,
  CommentStore ownerStore,
  UserStore targetStore,
});

typedef CommentCreatedByViewPageTitleGenerator = String Function(
  BuildContext context,
  CommentCreatedByViewPageStore pageStore,
  UserStore targetStore,
);
