// Action: RefreshAction

export type PageRefreshCityAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCityAction: PageRefreshCityAction = () => {
  return async function pageRefreshCityAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
