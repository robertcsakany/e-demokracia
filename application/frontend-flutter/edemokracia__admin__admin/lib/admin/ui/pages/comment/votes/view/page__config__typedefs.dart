//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.comment.votes.view;

typedef CommentVotesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  CommentVotesViewPageStore pageStore,
});

typedef CommentVotesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  CommentVotesViewPageStore pageStore,
  CommentStore ownerStore,
  SimpleVoteStore targetStore,
});

typedef CommentVotesViewPageTitleGenerator = String Function(
  BuildContext context,
  CommentVotesViewPageStore pageStore,
  SimpleVoteStore targetStore,
);
