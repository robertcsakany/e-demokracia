part of admin.ui.pages.admin.admin.dashboardhome.view;

class AdminAdminDashboardhomeViewConfig {
  AdminAdminDashboardhomeViewAdminDashboardDebatesTableConfig debatesTableConfig = AdminAdminDashboardhomeViewAdminDashboardDebatesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminAdminDashboardhomeViewAdminDashboardIssuesTableConfig issuesTableConfig = AdminAdminDashboardhomeViewAdminDashboardIssuesTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );

  AdminAdminDashboardhomeViewPageBackAction backAction;
  AdminAdminDashboardhomeViewPageExtendActions extendActions;
  AdminAdminDashboardhomeViewPageTitleGenerator titleGenerator;
}
