///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::User::activityCounties#PageRefresh
// Action owner name: edemokracia::User.activityCounties#View
// Action DataElement name: activityCounties
// Action DataElement owner name: edemokracia::User
// Action DataElement target name: edemokracia::County
// Owner Page name: edemokracia::User.activityCounties#View
// Action: RefreshAction

export type PageRefreshActivityCountiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshActivityCountiesAction: PageRefreshActivityCountiesAction = () => {
  return async function pageRefreshActivityCountiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
