///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::debates#PageRefresh
// Action owner name: edemokracia::admin::Issue.debates#View
// Action DataElement name: debates
// Action DataElement owner name: edemokracia::admin::Issue
// Action DataElement target name: edemokracia::admin::IssueDebate
// Owner Page name: edemokracia::admin::Issue.debates#View
// Action: RefreshAction

export type PageRefreshDebatesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebatesAction: PageRefreshDebatesAction = () => {
  return async function pageRefreshDebatesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
