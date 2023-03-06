///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::residentCounty#PageRefresh
// Action: RefreshAction

export type PageRefreshResidentCountyAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentCountyAction: PageRefreshResidentCountyAction = () => {
  return async function pageRefreshResidentCountyAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
