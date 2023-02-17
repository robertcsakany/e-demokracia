///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::users#PageRefresh
// Action: RefreshAction

export type PageRefreshUsersAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshUsersAction: PageRefreshUsersAction = () => {
  return async function pageRefreshUsersAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
