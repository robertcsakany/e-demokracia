// Action: RefreshAction

export type PageRefreshVoteEntriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshVoteEntriesAction: PageRefreshVoteEntriesAction = () => {
  return async function pageRefreshVoteEntriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
