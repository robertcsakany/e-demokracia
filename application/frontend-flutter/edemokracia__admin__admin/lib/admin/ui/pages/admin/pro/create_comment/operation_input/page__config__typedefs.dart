//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.create_comment.operation_input;

typedef AdminProCreateCommentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminProCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminProCreateCommentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminProCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminProCreateCommentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProCreateCommentOperationInputPageStore pageStore,
});

typedef AdminProCreateCommentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminProCreateCommentOperationInputPostCommentChanged = Function(dynamic value,
    {AdminProCreateCommentOperationInputPageStore pageStore, CreateCommentInputStore targetStore});

typedef AdminProCreateCommentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminProCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
);
