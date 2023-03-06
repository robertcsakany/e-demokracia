///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::County::cities#PageRefresh
// Action: RefreshAction

export type PageRefreshCitiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCitiesAction: PageRefreshCitiesAction = () => {
  return async function pageRefreshCitiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
