///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Debate::pros#PageRefresh
// Action: RefreshAction

export type PageRefreshProsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshProsAction: PageRefreshProsAction = () => {
  return async function pageRefreshProsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
