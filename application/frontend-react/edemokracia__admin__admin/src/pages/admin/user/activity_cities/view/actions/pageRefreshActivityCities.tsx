// Action: RefreshAction

export type PageRefreshActivityCitiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshActivityCitiesAction: PageRefreshActivityCitiesAction = () => {
  return async function pageRefreshActivityCitiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
