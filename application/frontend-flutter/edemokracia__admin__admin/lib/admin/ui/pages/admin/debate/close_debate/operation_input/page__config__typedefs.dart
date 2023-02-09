//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.close_debate.operation_input;

typedef AdminDebateCloseDebateOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminDebateCloseDebateOperationInputPageStore pageStore,
  CloseDebateInputStore targetStore,
});

typedef AdminDebateCloseDebateOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminDebateCloseDebateOperationInputPageStore pageStore,
  CloseDebateInputStore targetStore,
});

typedef AdminDebateCloseDebateOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateCloseDebateOperationInputPageStore pageStore,
});

typedef AdminDebateCloseDebateOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateCloseDebateOperationInputPageStore pageStore,
  CloseDebateInputStore targetStore,
});

typedef AdminDebateCloseDebateOperationInputPostVoteTypeChanged = Function(dynamic value,
    {AdminDebateCloseDebateOperationInputPageStore pageStore, CloseDebateInputStore targetStore});

typedef AdminDebateCloseDebateOperationInputPostCloseAtChanged = Function(dynamic value,
    {AdminDebateCloseDebateOperationInputPageStore pageStore, CloseDebateInputStore targetStore});

typedef AdminDebateCloseDebateOperationInputPostTitleChanged = Function(dynamic value,
    {AdminDebateCloseDebateOperationInputPageStore pageStore, CloseDebateInputStore targetStore});

typedef AdminDebateCloseDebateOperationInputPostDescriptionChanged = Function(dynamic value,
    {AdminDebateCloseDebateOperationInputPageStore pageStore, CloseDebateInputStore targetStore});

typedef AdminDebateCloseDebateOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateCloseDebateOperationInputPageStore pageStore,
  CloseDebateInputStore targetStore,
);
