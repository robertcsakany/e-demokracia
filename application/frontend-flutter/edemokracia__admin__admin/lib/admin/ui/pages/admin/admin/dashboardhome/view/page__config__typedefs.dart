//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForOriginalPageContainers(#application)
// Path expression: #pageStoreConfigTypeDefPath(#self.owner)
// Template name: lib/ui/pages/page/page__config__typedefs.dart.hbs
// Application: edemokracia::admin::Admin

part of admin.ui.pages.admin.admin.dashboardhome.view;

typedef AdminAdminDashboardhomeViewPageBackAction = Future<void> Function({
  NavigationState navigation,
  AdminAdminDashboardhomeViewPageStore pageStore,
});

typedef AdminAdminDashboardhomeViewPageExtendActions = List<Widget> Function(
  List<Widget> originalListOfActions, {
  BuildContext context,
  NavigationState navigation,
  AdminAdminDashboardhomeViewPageStore pageStore,
  AdminDashboardStore targetStore,
});

typedef AdminAdminDashboardhomeViewPageAdminDashboardDebatesTableDataCell = DataCell Function(
  AdminDebateStore targetStore,
  BuildContext context,
);

typedef AdminAdminDashboardhomeViewPageAdminDashboardDebatesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminDebateStore targetStore,
  AdminAdminDashboardhomeViewPageStore pageStore,
);
typedef AdminAdminDashboardhomeViewPageAdminDashboardIssuesTableDataCell = DataCell Function(
  AdminIssueStore targetStore,
  BuildContext context,
);

typedef AdminAdminDashboardhomeViewPageAdminDashboardIssuesTableDataCellOnTap = Future<void> Function(
  BuildContext context,
  AdminIssueStore targetStore,
  AdminAdminDashboardhomeViewPageStore pageStore,
);

typedef AdminAdminDashboardhomeViewPageTitleGenerator = String Function(
  BuildContext context,
  AdminAdminDashboardhomeViewPageStore pageStore,
  AdminDashboardStore targetStore,
);
