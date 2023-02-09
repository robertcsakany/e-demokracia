//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.vote_entry.vote_definition.view;

typedef VoteEntryVoteDefinitionViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  VoteEntryVoteDefinitionViewPageStore pageStore,
});

typedef VoteEntryVoteDefinitionViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  VoteEntryVoteDefinitionViewPageStore pageStore,
  VoteEntryStore ownerStore,
  VoteDefinitionStore targetStore,
});

typedef VoteEntryVoteDefinitionViewPageTitleGenerator = String Function(
  BuildContext context,
  VoteEntryVoteDefinitionViewPageStore pageStore,
  VoteDefinitionStore targetStore,
);
