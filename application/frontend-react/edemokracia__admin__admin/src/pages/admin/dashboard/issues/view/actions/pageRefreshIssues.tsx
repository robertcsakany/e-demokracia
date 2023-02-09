///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::issues#PageRefresh
// Action owner name: edemokracia::admin::Dashboard.issues#View
// Action DataElement name: issues
// Action DataElement owner name: edemokracia::admin::Dashboard
// Action DataElement target name: edemokracia::admin::Issue
// Owner Page name: edemokracia::admin::Dashboard.issues#View
// Action: RefreshAction

export type PageRefreshIssuesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssuesAction: PageRefreshIssuesAction = () => {
  return async function pageRefreshIssuesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
