//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.vote_entry.user.view;

typedef VoteEntryUserViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  VoteEntryUserViewPageStore pageStore,
});

typedef VoteEntryUserViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  VoteEntryUserViewPageStore pageStore,
  VoteEntryStore ownerStore,
  UserStore targetStore,
});

typedef VoteEntryUserViewPageTitleGenerator = String Function(
  BuildContext context,
  VoteEntryUserViewPageStore pageStore,
  UserStore targetStore,
);
