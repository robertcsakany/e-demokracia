// Action: RefreshAction

export type PageRefreshDebateAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebateAction: PageRefreshDebateAction = () => {
  return async function pageRefreshDebateAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
