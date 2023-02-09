//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.simple_vote.user.view;

typedef SimpleVoteUserViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  SimpleVoteUserViewPageStore pageStore,
});

typedef SimpleVoteUserViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  SimpleVoteUserViewPageStore pageStore,
  SimpleVoteStore ownerStore,
  UserStore targetStore,
});

typedef SimpleVoteUserViewPageTitleGenerator = String Function(
  BuildContext context,
  SimpleVoteUserViewPageStore pageStore,
  UserStore targetStore,
);
