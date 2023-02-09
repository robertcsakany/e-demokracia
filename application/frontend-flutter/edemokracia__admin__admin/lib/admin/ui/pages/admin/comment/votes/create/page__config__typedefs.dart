//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.comment.votes.create;

typedef AdminCommentVotesCreatePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCommentVotesCreatePageStore pageStore,
});

typedef AdminCommentVotesCreatePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCommentVotesCreatePageStore pageStore,
  AdminCommentStore ownerStore,
  AdminSimpleVoteStore targetStore,
});

typedef AdminCommentVotesCreatePostCreatedChanged = Function(dynamic value, {AdminCommentVotesCreatePageStore pageStore, AdminSimpleVoteStore targetStore});

typedef AdminCommentVotesCreatePostTypeChanged = Function(dynamic value, {AdminCommentVotesCreatePageStore pageStore, AdminSimpleVoteStore targetStore});

typedef AdminCommentVotesCreatePageTitleGenerator = String Function(
  BuildContext context,
  AdminCommentVotesCreatePageStore pageStore,
  AdminSimpleVoteStore targetStore,
);
