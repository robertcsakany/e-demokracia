// Action: RefreshAction

export type PageRefreshCommentsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCommentsAction: PageRefreshCommentsAction = () => {
  return async function pageRefreshCommentsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
