//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.con.votes.view;

typedef ConVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ConVotesViewPageStore pageStore,
});

typedef ConVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ConVotesViewPageStore pageStore,
  ConStore ownerStore,
  SimpleVoteStore targetStore,
});

typedef ConVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  ConVotesViewPageStore pageStore,
  SimpleVoteStore targetStore,
);
