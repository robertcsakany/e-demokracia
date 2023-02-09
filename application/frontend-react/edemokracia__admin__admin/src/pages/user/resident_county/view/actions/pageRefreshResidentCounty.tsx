///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::User::residentCounty#PageRefresh
// Action owner name: edemokracia::User.residentCounty#View
// Action DataElement name: residentCounty
// Action DataElement owner name: edemokracia::User
// Action DataElement target name: edemokracia::County
// Owner Page name: edemokracia::User.residentCounty#View
// Action: RefreshAction

export type PageRefreshResidentCountyAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentCountyAction: PageRefreshResidentCountyAction = () => {
  return async function pageRefreshResidentCountyAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
