///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::User::activityCities#PageRefresh
// Action owner name: edemokracia::User.activityCities#View
// Action DataElement name: activityCities
// Action DataElement owner name: edemokracia::User
// Action DataElement target name: edemokracia::City
// Owner Page name: edemokracia::User.activityCities#View
// Action: RefreshAction

export type PageRefreshActivityCitiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshActivityCitiesAction: PageRefreshActivityCitiesAction = () => {
  return async function pageRefreshActivityCitiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};