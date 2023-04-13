// Action: RefreshAction

export type PageRefreshCountiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCountiesAction: PageRefreshCountiesAction = () => {
  return async function pageRefreshCountiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
