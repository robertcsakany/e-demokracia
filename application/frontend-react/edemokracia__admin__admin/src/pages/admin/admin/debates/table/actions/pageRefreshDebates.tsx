// Action: RefreshAction

export type PageRefreshDebatesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebatesAction: PageRefreshDebatesAction = () => {
  return async function pageRefreshDebatesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
