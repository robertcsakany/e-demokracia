///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Debate::debateVote#PageRefresh
// Action owner name: edemokracia::Debate.debateVote#View
// Action DataElement name: debateVote
// Action DataElement owner name: edemokracia::Debate
// Action DataElement target name: edemokracia::VoteDefinition
// Owner Page name: edemokracia::Debate.debateVote#View
// Action: RefreshAction

export type PageRefreshDebateVoteAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebateVoteAction: PageRefreshDebateVoteAction = () => {
  return async function pageRefreshDebateVoteAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
