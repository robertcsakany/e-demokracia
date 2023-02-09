//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.vote_definition.vote_yes_no_abstain.operation_input;

typedef AdminVoteDefinitionVoteYesNoAbstainOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore pageStore,
  YesNoAbstainVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteYesNoAbstainOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore pageStore,
  YesNoAbstainVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteYesNoAbstainOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore pageStore,
});

typedef AdminVoteDefinitionVoteYesNoAbstainOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore pageStore,
  YesNoAbstainVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteYesNoAbstainOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminVoteDefinitionVoteYesNoAbstainOperationInputPageStore pageStore,
  YesNoAbstainVoteInputStore targetStore,
);
