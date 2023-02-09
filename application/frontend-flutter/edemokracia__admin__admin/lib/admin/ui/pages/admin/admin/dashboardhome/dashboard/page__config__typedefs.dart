//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.dashboardhome.dashboard;

typedef AdminAdminDashboardhomeDashboardPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminDashboardhomeDashboardPageStore pageStore,
});

typedef AdminAdminDashboardhomeDashboardPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminDashboardhomeDashboardPageStore pageStore,
});

typedef AdminAdminDashboardhomeDashboardPageAdminDashboardDebatesTableDataCell = DataCell Function(
  AdminDebateStore targetStore,
  BuildContext context,
);

typedef AdminAdminDashboardhomeDashboardPageAdminDashboardDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDebateStore targetStore,
  AdminAdminDashboardhomeDashboardPageStore pageStore,
);
typedef AdminAdminDashboardhomeDashboardPageAdminDashboardIssuesTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);

typedef AdminAdminDashboardhomeDashboardPageAdminDashboardIssuesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueStore targetStore,
  AdminAdminDashboardhomeDashboardPageStore pageStore,
);

typedef AdminAdminDashboardhomeDashboardPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminDashboardhomeDashboardPageStore pageStore,
);
