///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::residentDistrict#PageRefresh
// Action owner name: edemokracia::admin::User.residentDistrict#View
// Action DataElement name: residentDistrict
// Action DataElement owner name: edemokracia::admin::User
// Action DataElement target name: edemokracia::admin::District
// Owner Page name: edemokracia::admin::User.residentDistrict#View
// Action: RefreshAction

export type PageRefreshResidentDistrictAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentDistrictAction: PageRefreshResidentDistrictAction = () => {
  return async function pageRefreshResidentDistrictAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
