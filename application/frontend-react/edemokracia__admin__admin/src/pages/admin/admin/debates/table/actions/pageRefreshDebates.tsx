///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::debates#PageRefresh
// Action owner name: edemokracia::admin::Admin.debates#Table
// Action DataElement name: debates
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::Debate
// Owner Page name: edemokracia::admin::Admin.debates#Table
// Action: RefreshAction

export type PageRefreshDebatesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebatesAction: PageRefreshDebatesAction = () => {
  return async function pageRefreshDebatesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
