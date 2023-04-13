// Action: RefreshAction

export type PageRefreshDashboardhomeAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDashboardhomeAction: PageRefreshDashboardhomeAction = () => {
  return async function pageRefreshDashboardhomeAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
