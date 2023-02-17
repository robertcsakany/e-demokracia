///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::activityDistricts#PageRefresh
// Action: RefreshAction

export type PageRefreshActivityDistrictsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshActivityDistrictsAction: PageRefreshActivityDistrictsAction = () => {
  return async function pageRefreshActivityDistrictsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
