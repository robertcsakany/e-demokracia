//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.vote_definition.vote_yes_no.operation_input;

typedef AdminVoteDefinitionVoteYesNoOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoOperationInputPageStore pageStore,
  YesNoVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteYesNoOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoOperationInputPageStore pageStore,
  YesNoVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteYesNoOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoOperationInputPageStore pageStore,
});

typedef AdminVoteDefinitionVoteYesNoOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoOperationInputPageStore pageStore,
  YesNoVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteYesNoOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminVoteDefinitionVoteYesNoOperationInputPageStore pageStore,
  YesNoVoteInputStore targetStore,
);
