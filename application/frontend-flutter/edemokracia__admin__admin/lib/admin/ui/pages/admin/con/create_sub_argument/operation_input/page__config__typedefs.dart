//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.create_sub_argument.operation_input;

typedef AdminConCreateSubArgumentOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminConCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminConCreateSubArgumentOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminConCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminConCreateSubArgumentOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConCreateSubArgumentOperationInputPageStore pageStore,
});

typedef AdminConCreateSubArgumentOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
});

typedef AdminConCreateSubArgumentOperationInputPostTitleChanged = Function(dynamic value,
    {AdminConCreateSubArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminConCreateSubArgumentOperationInputPostTypeChanged = Function(dynamic value,
    {AdminConCreateSubArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminConCreateSubArgumentOperationInputPostDescriptionChanged = Function(dynamic value,
    {AdminConCreateSubArgumentOperationInputPageStore pageStore, CreateArgumentInputStore targetStore});

typedef AdminConCreateSubArgumentOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminConCreateSubArgumentOperationInputPageStore pageStore,
  CreateArgumentInputStore targetStore,
);
