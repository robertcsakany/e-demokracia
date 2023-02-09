///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::votes#PageRefresh
// Action owner name: edemokracia::admin::Pro.votes#Table
// Action DataElement name: votes
// Action DataElement owner name: edemokracia::admin::Pro
// Action DataElement target name: edemokracia::admin::SimpleVote
// Owner Page name: edemokracia::admin::Pro.votes#Table
// Action: RefreshAction

export type PageRefreshVotesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVotesAction: PageRefreshVotesAction = () => {
  return async function pageRefreshVotesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
