//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.issue.create_debate.operation_input;

typedef AdminIssueCreateDebateOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreateDebateOperationInputPageStore pageStore,
  CreateDebateInputStore targetStore,
});

typedef AdminIssueCreateDebateOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreateDebateOperationInputPageStore pageStore,
  CreateDebateInputStore targetStore,
});

typedef AdminIssueCreateDebateOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminIssueCreateDebateOperationInputPageStore pageStore,
});

typedef AdminIssueCreateDebateOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminIssueCreateDebateOperationInputPageStore pageStore,
  CreateDebateInputStore targetStore,
});

typedef AdminIssueCreateDebateOperationInputPostTitleChanged = Function(dynamic value,
    {AdminIssueCreateDebateOperationInputPageStore pageStore, CreateDebateInputStore targetStore});

typedef AdminIssueCreateDebateOperationInputPostCloseAtChanged = Function(dynamic value,
    {AdminIssueCreateDebateOperationInputPageStore pageStore, CreateDebateInputStore targetStore});

typedef AdminIssueCreateDebateOperationInputPostDescriptionChanged = Function(dynamic value,
    {AdminIssueCreateDebateOperationInputPageStore pageStore, CreateDebateInputStore targetStore});

typedef AdminIssueCreateDebateOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminIssueCreateDebateOperationInputPageStore pageStore,
  CreateDebateInputStore targetStore,
);
