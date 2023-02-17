///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::cons#PageRefresh
// Action: RefreshAction

export type PageRefreshConsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshConsAction: PageRefreshConsAction = () => {
  return async function pageRefreshConsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
