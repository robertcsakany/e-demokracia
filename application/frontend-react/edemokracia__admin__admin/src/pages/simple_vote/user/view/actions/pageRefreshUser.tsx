///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::SimpleVote::user#PageRefresh
// Action owner name: edemokracia::SimpleVote.user#View
// Action DataElement name: user
// Action DataElement owner name: edemokracia::SimpleVote
// Action DataElement target name: edemokracia::User
// Owner Page name: edemokracia::SimpleVote.user#View
// Action: RefreshAction

export type PageRefreshUserAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshUserAction: PageRefreshUserAction = () => {
  return async function pageRefreshUserAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
