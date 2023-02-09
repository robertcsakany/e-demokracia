//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.votes.update;

typedef AdminProVotesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProVotesUpdatePageStore pageStore,
});

typedef AdminProVotesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProVotesUpdatePageStore pageStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminProVotesUpdatePostCreatedChanged = Function(dynamic value, {AdminProVotesUpdatePageStore pageStore, AdminSimpleVoteStore targetStore});

typedef AdminProVotesUpdatePostTypeChanged = Function(dynamic value, {AdminProVotesUpdatePageStore pageStore, AdminSimpleVoteStore targetStore});

typedef AdminProVotesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminProVotesUpdatePageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
