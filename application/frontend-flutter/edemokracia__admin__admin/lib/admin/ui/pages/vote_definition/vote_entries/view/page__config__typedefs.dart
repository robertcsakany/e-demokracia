//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.vote_definition.vote_entries.view;

typedef VoteDefinitionVoteEntriesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  VoteDefinitionVoteEntriesViewPageStore pageStore,
});

typedef VoteDefinitionVoteEntriesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  VoteDefinitionVoteEntriesViewPageStore pageStore,
  VoteDefinitionStore ownerStore,
  VoteEntryStore targetStore,
});

typedef VoteDefinitionVoteEntriesViewPageTitleGenerator = String Function(
  BuildContext context,
  VoteDefinitionVoteEntriesViewPageStore pageStore,
  VoteEntryStore targetStore,
);
