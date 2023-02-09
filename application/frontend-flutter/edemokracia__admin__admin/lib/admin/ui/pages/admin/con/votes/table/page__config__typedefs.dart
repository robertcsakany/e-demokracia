//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.con.votes.table;

typedef AdminConVotesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminConVotesTablePageStore pageStore,
});

typedef AdminConVotesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminConVotesTablePageStore pageStore,
  AdminConStore ownerStore,
});

typedef AdminConVotesTablePageAdminConVotesTableDataCell = DataCell Function(
  AdminSimpleVoteStore targetStore,
  BuildContext context,
);

typedef AdminConVotesTablePageAdminConVotesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminSimpleVoteStore targetStore,
  AdminConVotesTablePageStore pageStore,
);

typedef AdminConVotesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminConVotesTablePageStore pageStore,
);
