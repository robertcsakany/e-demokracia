//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.create_comment.operation_input;

typedef AdminIssueCreateCommentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminIssueCreateCommentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminIssueCreateCommentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreateCommentOperationInputPageStore pageStore,
});

typedef AdminIssueCreateCommentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
});

typedef AdminIssueCreateCommentOperationInputPostCommentChanged = Function(dynamic value,
    {AdminIssueCreateCommentOperationInputPageStore pageStore, CreateCommentInputStore targetStore});

typedef AdminIssueCreateCommentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCreateCommentOperationInputPageStore pageStore,
  CreateCommentInputStore targetStore,
);
