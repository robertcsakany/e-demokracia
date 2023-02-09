//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.comment.votes.view;

typedef AdminCommentVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCommentVotesViewPageStore pageStore,
});

typedef AdminCommentVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCommentVotesViewPageStore pageStore,
  AdminCommentStore ownerStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminCommentVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminCommentVotesViewPageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
