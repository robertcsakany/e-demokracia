// Action: RefreshAction

export type PageRefreshCitiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCitiesAction: PageRefreshCitiesAction = () => {
  return async function pageRefreshCitiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
