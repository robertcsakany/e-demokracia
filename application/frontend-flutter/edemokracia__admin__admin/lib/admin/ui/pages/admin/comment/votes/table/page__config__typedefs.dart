//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.comment.votes.table;

typedef AdminCommentVotesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminCommentVotesTablePageStore pageStore,
});

typedef AdminCommentVotesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminCommentVotesTablePageStore pageStore,
  AdminCommentStore ownerStore,
});

typedef AdminCommentVotesTablePageAdminCommentVotesTableDataCell = DataCell Function(
  AdminSimpleVoteStore targetStore,
  BuildContext context,
);

typedef AdminCommentVotesTablePageAdminCommentVotesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminSimpleVoteStore targetStore,
  AdminCommentVotesTablePageStore pageStore,
);

typedef AdminCommentVotesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminCommentVotesTablePageStore pageStore,
);
