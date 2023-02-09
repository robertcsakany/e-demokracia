//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.dashboard.debates.view;

typedef AdminDashboardDebatesViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminDashboardDebatesViewPageStore pageStore,
});

typedef AdminDashboardDebatesViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminDashboardDebatesViewPageStore pageStore,
  AdminDashboardStore ownerStore,
  AdminDebateStore targetStore,
});

typedef AdminDashboardDebatesViewPageAdminDebateConsTableDataCell = DataCell Function(
  AdminConStore targetStore,
  BuildContext context,
);

typedef AdminDashboardDebatesViewPageAdminDebateConsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminConStore targetStore,
  AdminDashboardDebatesViewPageStore pageStore,
);
typedef AdminDashboardDebatesViewPageAdminDebateProsTableDataCell = DataCell Function(
  AdminProStore targetStore,
  BuildContext context,
);

typedef AdminDashboardDebatesViewPageAdminDebateProsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminProStore targetStore,
  AdminDashboardDebatesViewPageStore pageStore,
);
typedef AdminDashboardDebatesViewPageAdminDebateCommentsTableDataCell = DataCell Function(
  AdminCommentStore targetStore,
  BuildContext context,
);

typedef AdminDashboardDebatesViewPageAdminDebateCommentsTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminCommentStore targetStore,
  AdminDashboardDebatesViewPageStore pageStore,
);

typedef AdminDashboardDebatesViewPageAdminDebateCreatedByTableDataCell = DataCell Function(
  AdminUserStore targetStore,
  BuildContext context,
);
typedef AdminDashboardDebatesViewPageAdminDebateIssueTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);
typedef AdminDashboardDebatesViewPageAdminDebateVoteDefinitionTableDataCell = DataCell Function(
  AdminVoteDefinitionStore targetStore,
  BuildContext context,
);

typedef AdminDashboardDebatesViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminDashboardDebatesViewPageStore pageStore,
  AdminDebateStore targetStore,
);
