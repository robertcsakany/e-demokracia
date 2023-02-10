///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::VoteEntry::voteDefinition#PageRefresh
// Action owner name: edemokracia::VoteEntry.voteDefinition#View
// Action DataElement name: voteDefinition
// Action DataElement owner name: edemokracia::VoteEntry
// Action DataElement target name: edemokracia::VoteDefinition
// Owner Page name: edemokracia::VoteEntry.voteDefinition#View
// Action: RefreshAction

export type PageRefreshVoteDefinitionAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteDefinitionAction: PageRefreshVoteDefinitionAction = () => {
  return async function pageRefreshVoteDefinitionAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
