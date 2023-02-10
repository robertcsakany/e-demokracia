///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Debate::issue#PageRefresh
// Action owner name: edemokracia::Debate.issue#View
// Action DataElement name: issue
// Action DataElement owner name: edemokracia::Debate
// Action DataElement target name: edemokracia::Issue
// Owner Page name: edemokracia::Debate.issue#View
// Action: RefreshAction

export type PageRefreshIssueAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssueAction: PageRefreshIssueAction = () => {
  return async function pageRefreshIssueAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
