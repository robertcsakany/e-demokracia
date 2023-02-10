///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::dashboardhome#PageRefresh
// Action owner name: edemokracia::admin::Admin.dashboardhome#View
// Action DataElement name: dashboardhome
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::Dashboard
// Owner Page name: edemokracia::admin::Admin.dashboardhome#View
// Action: RefreshAction

export type PageRefreshDashboardhomeAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDashboardhomeAction: PageRefreshDashboardhomeAction = () => {
  return async function pageRefreshDashboardhomeAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
