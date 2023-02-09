//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.create_sub_argument.operation_input;

typedef AdminProCreateSubArgumentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminProCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminProCreateSubArgumentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminProCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminProCreateSubArgumentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProCreateSubArgumentOperationInputPageStore pageStore,
});

typedef AdminProCreateSubArgumentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminProCreateSubArgumentOperationInputPostTitleChanged = Function(dynamic value,
    {AdminProCreateSubArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminProCreateSubArgumentOperationInputPostTypeChanged = Function(dynamic value,
    {AdminProCreateSubArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminProCreateSubArgumentOperationInputPostDescriptionChanged = Function(dynamic value,
    {AdminProCreateSubArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminProCreateSubArgumentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminProCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
);
