//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.vote_definition.vote_rating.operation_input;

typedef AdminVoteDefinitionVoteRatingOperationInputOperationCall = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteRatingOperationInputPageStore pageStore,
  RatingVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteRatingOperationInputOperationCallSuccess = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteRatingOperationInputPageStore pageStore,
  RatingVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteRatingOperationInputPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminVoteDefinitionVoteRatingOperationInputPageStore pageStore,
});

typedef AdminVoteDefinitionVoteRatingOperationInputPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminVoteDefinitionVoteRatingOperationInputPageStore pageStore,
  RatingVoteInputStore targetStore,
});

typedef AdminVoteDefinitionVoteRatingOperationInputPageTitleGenerator = String Function(
  BuildContext context,
  AdminVoteDefinitionVoteRatingOperationInputPageStore pageStore,
  RatingVoteInputStore targetStore,
);
