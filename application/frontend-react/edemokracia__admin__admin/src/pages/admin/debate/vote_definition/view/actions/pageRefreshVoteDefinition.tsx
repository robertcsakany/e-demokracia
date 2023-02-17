///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::voteDefinition#PageRefresh
// Action: RefreshAction

export type PageRefreshVoteDefinitionAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteDefinitionAction: PageRefreshVoteDefinitionAction = () => {
  return async function pageRefreshVoteDefinitionAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
