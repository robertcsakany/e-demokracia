///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::City::districts#PageRefresh
// Action owner name: edemokracia::City.districts#View
// Action DataElement name: districts
// Action DataElement owner name: edemokracia::City
// Action DataElement target name: edemokracia::District
// Owner Page name: edemokracia::City.districts#View
// Action: RefreshAction

export type PageRefreshDistrictsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDistrictsAction: PageRefreshDistrictsAction = () => {
  return async function pageRefreshDistrictsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
