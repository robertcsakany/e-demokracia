// Action: RefreshAction

export type PageRefreshUserAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshUserAction: PageRefreshUserAction = () => {
  return async function pageRefreshUserAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
