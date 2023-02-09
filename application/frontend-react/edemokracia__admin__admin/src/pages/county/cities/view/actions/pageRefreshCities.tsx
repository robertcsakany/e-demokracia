///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::County::cities#PageRefresh
// Action owner name: edemokracia::County.cities#View
// Action DataElement name: cities
// Action DataElement owner name: edemokracia::County
// Action DataElement target name: edemokracia::City
// Owner Page name: edemokracia::County.cities#View
// Action: RefreshAction

export type PageRefreshCitiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCitiesAction: PageRefreshCitiesAction = () => {
  return async function pageRefreshCitiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
