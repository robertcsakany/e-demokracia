//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.create_comment.operation_input;

typedef AdminConCreateCommentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminConCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminConCreateCommentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminConCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminConCreateCommentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConCreateCommentOperationInputPageStore pageStore,
});

typedef AdminConCreateCommentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminConCreateCommentOperationInputPostCommentChanged = Function(dynamic value,
    {AdminConCreateCommentOperationInputPageStore pageStore, CreateCommentInputStore targetStore});

typedef AdminConCreateCommentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminConCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
);
