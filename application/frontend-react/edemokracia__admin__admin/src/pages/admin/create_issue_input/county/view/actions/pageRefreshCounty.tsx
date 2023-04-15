// Action: RefreshAction

export type PageRefreshCountyAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCountyAction: PageRefreshCountyAction = () => {
  return async function pageRefreshCountyAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
