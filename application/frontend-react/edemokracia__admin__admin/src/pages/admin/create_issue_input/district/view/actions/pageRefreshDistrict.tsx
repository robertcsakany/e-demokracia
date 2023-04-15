// Action: RefreshAction

export type PageRefreshDistrictAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDistrictAction: PageRefreshDistrictAction = () => {
  return async function pageRefreshDistrictAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
