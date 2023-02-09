//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.votes.view;

typedef AdminConVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConVotesViewPageStore pageStore,
});

typedef AdminConVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConVotesViewPageStore pageStore,
  AdminConStore ownerStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminConVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminConVotesViewPageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
