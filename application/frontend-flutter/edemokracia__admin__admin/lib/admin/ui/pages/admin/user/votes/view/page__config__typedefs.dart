//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.votes.view;

typedef AdminUserVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserVotesViewPageStore pageStore,
});

typedef AdminUserVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserVotesViewPageStore pageStore,
  AdminUserStore ownerStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminUserVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminUserVotesViewPageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
