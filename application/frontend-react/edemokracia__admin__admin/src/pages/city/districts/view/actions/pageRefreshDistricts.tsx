///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::City::districts#PageRefresh
// Action: RefreshAction

export type PageRefreshDistrictsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDistrictsAction: PageRefreshDistrictsAction = () => {
  return async function pageRefreshDistrictsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
