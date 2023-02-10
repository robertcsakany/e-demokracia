///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::User::residentCity#PageRefresh
// Action owner name: edemokracia::User.residentCity#View
// Action DataElement name: residentCity
// Action DataElement owner name: edemokracia::User
// Action DataElement target name: edemokracia::City
// Owner Page name: edemokracia::User.residentCity#View
// Action: RefreshAction

export type PageRefreshResidentCityAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentCityAction: PageRefreshResidentCityAction = () => {
  return async function pageRefreshResidentCityAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
