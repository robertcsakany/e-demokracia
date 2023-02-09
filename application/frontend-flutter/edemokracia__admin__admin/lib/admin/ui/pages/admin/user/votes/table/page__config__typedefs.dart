//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.user.votes.table;

typedef AdminUserVotesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminUserVotesTablePageStore pageStore,
});

typedef AdminUserVotesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminUserVotesTablePageStore pageStore,
  AdminUserStore ownerStore,
});

typedef AdminUserVotesTablePageAdminUserVotesTableDataCell = DataCell Function(
  AdminSimpleVoteStore targetStore,
  BuildContext context,
);

typedef AdminUserVotesTablePageAdminUserVotesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminSimpleVoteStore targetStore,
  AdminUserVotesTablePageStore pageStore,
);

typedef AdminUserVotesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminUserVotesTablePageStore pageStore,
);
