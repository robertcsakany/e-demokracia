//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.user.votes.view;

typedef UserVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  UserVotesViewPageStore pageStore,
});

typedef UserVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  UserVotesViewPageStore pageStore,
  UserStore ownerStore,
  SimpleVoteStore targetStore,
});

typedef UserVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  UserVotesViewPageStore pageStore,
  SimpleVoteStore targetStore,
);
