// Action: RefreshAction

export type PageRefreshResidentCityAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentCityAction: PageRefreshResidentCityAction = () => {
  return async function pageRefreshResidentCityAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
