// Action: RefreshAction

export type PageRefreshDebateVoteAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebateVoteAction: PageRefreshDebateVoteAction = () => {
  return async function pageRefreshDebateVoteAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
