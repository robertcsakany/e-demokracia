part of admin.ui.pages.admin.admin.dashboardhome.dashboard;

class AdminAdminDashboardhomeDashboardConfig {
  AdminAdminDashboardhomeDashboardAdminDashboardDebatesTableConfig debatesTableConfig = AdminAdminDashboardhomeDashboardAdminDashboardDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminDashboardhomeDashboardAdminDashboardIssuesTableConfig issuesTableConfig = AdminAdminDashboardhomeDashboardAdminDashboardIssuesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminDashboardhomeDashboardPageBackAction backAction;
  AdminAdminDashboardhomeDashboardPageExtendActions extendActions;
  AdminAdminDashboardhomeDashboardPageTitleGenerator titleGenerator;
}
