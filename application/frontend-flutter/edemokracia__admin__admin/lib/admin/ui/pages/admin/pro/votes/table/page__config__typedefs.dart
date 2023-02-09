//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.pro.votes.table;

typedef AdminProVotesTablePageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminProVotesTablePageStore pageStore,
});

typedef AdminProVotesTablePageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminProVotesTablePageStore pageStore,
  AdminProStore ownerStore,
});

typedef AdminProVotesTablePageAdminProVotesTableDataCell = DataCell Function(
  AdminSimpleVoteStore targetStore,
  BuildContext context,
);

typedef AdminProVotesTablePageAdminProVotesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminSimpleVoteStore targetStore,
  AdminProVotesTablePageStore pageStore,
);

typedef AdminProVotesTablePageTitleGenerator = String Function(
  BuildContext context,
  AdminProVotesTablePageStore pageStore,
);
