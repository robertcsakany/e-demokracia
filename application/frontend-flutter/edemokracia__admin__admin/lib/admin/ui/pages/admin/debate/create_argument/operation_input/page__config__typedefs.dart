//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.debate.create_argument.operation_input;

typedef AdminDebateCreateArgumentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreateArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminDebateCreateArgumentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreateArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminDebateCreateArgumentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDebateCreateArgumentOperationInputPageStore pageStore,
});

typedef AdminDebateCreateArgumentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDebateCreateArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminDebateCreateArgumentOperationInputPostTitleChanged = Function(dynamic value,
    {AdminDebateCreateArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminDebateCreateArgumentOperationInputPostTypeChanged = Function(dynamic value,
    {AdminDebateCreateArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminDebateCreateArgumentOperationInputPostDescriptionChanged = Function(dynamic value,
    {AdminDebateCreateArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminDebateCreateArgumentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminDebateCreateArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
);
