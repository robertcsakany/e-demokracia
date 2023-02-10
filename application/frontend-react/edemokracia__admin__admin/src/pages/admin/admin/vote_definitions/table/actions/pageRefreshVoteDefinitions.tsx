///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::voteDefinitions#PageRefresh
// Action owner name: edemokracia::admin::Admin.voteDefinitions#Table
// Action DataElement name: voteDefinitions
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::VoteDefinition
// Owner Page name: edemokracia::admin::Admin.voteDefinitions#Table
// Action: RefreshAction

export type PageRefreshVoteDefinitionsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteDefinitionsAction: PageRefreshVoteDefinitionsAction = () => {
  return async function pageRefreshVoteDefinitionsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
