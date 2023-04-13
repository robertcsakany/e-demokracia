// Action: RefreshAction

export type PageRefreshVoteDefinitionsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteDefinitionsAction: PageRefreshVoteDefinitionsAction = () => {
  return async function pageRefreshVoteDefinitionsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
