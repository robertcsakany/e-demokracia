// Action: RefreshAction

export type PageRefreshDistrictsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDistrictsAction: PageRefreshDistrictsAction = () => {
  return async function pageRefreshDistrictsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
