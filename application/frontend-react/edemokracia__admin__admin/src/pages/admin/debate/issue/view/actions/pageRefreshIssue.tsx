///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::issue#PageRefresh
// Action: RefreshAction

export type PageRefreshIssueAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssueAction: PageRefreshIssueAction = () => {
  return async function pageRefreshIssueAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
