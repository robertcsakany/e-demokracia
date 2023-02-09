//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.pro.votes.view;

typedef ProVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  ProVotesViewPageStore pageStore,
});

typedef ProVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  ProVotesViewPageStore pageStore,
  ProStore ownerStore,
  SimpleVoteStore targetStore,
});

typedef ProVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  ProVotesViewPageStore pageStore,
  SimpleVoteStore targetStore,
);
