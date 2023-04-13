// Action: RefreshAction

export type PageRefreshResidentDistrictAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentDistrictAction: PageRefreshResidentDistrictAction = () => {
  return async function pageRefreshResidentDistrictAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
