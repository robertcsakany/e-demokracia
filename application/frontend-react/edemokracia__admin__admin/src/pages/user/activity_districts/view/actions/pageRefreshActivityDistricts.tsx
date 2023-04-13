// Action: RefreshAction

export type PageRefreshActivityDistrictsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshActivityDistrictsAction: PageRefreshActivityDistrictsAction = () => {
  return async function pageRefreshActivityDistrictsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
