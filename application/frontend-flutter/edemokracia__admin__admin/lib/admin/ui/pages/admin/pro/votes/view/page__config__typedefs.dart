//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.votes.view;

typedef AdminProVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProVotesViewPageStore pageStore,
});

typedef AdminProVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProVotesViewPageStore pageStore,
  AdminProStore ownerStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminProVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminProVotesViewPageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
