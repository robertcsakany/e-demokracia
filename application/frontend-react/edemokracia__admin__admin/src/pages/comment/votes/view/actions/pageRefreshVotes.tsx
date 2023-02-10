///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Comment::votes#PageRefresh
// Action owner name: edemokracia::Comment.votes#View
// Action DataElement name: votes
// Action DataElement owner name: edemokracia::Comment
// Action DataElement target name: edemokracia::SimpleVote
// Owner Page name: edemokracia::Comment.votes#View
// Action: RefreshAction

export type PageRefreshVotesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVotesAction: PageRefreshVotesAction = () => {
  return async function pageRefreshVotesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
