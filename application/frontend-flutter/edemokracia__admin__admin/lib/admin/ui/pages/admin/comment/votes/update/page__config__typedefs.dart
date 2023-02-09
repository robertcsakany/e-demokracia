//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.comment.votes.update;

typedef AdminCommentVotesUpdatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCommentVotesUpdatePageStore pageStore,
});

typedef AdminCommentVotesUpdatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCommentVotesUpdatePageStore pageStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminCommentVotesUpdatePostCreatedChanged = Function(dynamic value, {AdminCommentVotesUpdatePageStore pageStore, AdminSimpleVoteStore targetStore});

typedef AdminCommentVotesUpdatePostTypeChanged = Function(dynamic value, {AdminCommentVotesUpdatePageStore pageStore, AdminSimpleVoteStore targetStore});

typedef AdminCommentVotesUpdatePageTitleGenerator = String Function(
  BuildContext context,
  AdminCommentVotesUpdatePageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
