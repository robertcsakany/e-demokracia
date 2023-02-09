//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.debate.debate_vote.view;

typedef DebateDebateVoteViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  DebateDebateVoteViewPageStore pageStore,
});

typedef DebateDebateVoteViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  DebateDebateVoteViewPageStore pageStore,
  DebateStore ownerStore,
  VoteDefinitionStore targetStore,
});

typedef DebateDebateVoteViewPageTitleGenerator = String Function(
  BuildContext context,
  DebateDebateVoteViewPageStore pageStore,
  VoteDefinitionStore targetStore,
);
