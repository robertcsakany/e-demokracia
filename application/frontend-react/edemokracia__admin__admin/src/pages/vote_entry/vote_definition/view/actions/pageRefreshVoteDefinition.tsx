// Action: RefreshAction

export type PageRefreshVoteDefinitionAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteDefinitionAction: PageRefreshVoteDefinitionAction = () => {
  return async function pageRefreshVoteDefinitionAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
