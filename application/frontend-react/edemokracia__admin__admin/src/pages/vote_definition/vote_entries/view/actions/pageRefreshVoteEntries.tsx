///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::VoteDefinition::voteEntries#PageRefresh
// Action: RefreshAction

export type PageRefreshVoteEntriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteEntriesAction: PageRefreshVoteEntriesAction = () => {
  return async function pageRefreshVoteEntriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
