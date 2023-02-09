//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.create_comment.operation_input;

typedef AdminDebateCreateCommentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminDebateCreateCommentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminDebateCreateCommentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreateCommentOperationInputPageStore pageStore,
});

typedef AdminDebateCreateCommentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminDebateCreateCommentOperationInputPostCommentChanged = Function(dynamic value,
    {AdminDebateCreateCommentOperationInputPageStore pageStore, CreateCommentInputStore targetStore});

typedef AdminDebateCreateCommentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
);
