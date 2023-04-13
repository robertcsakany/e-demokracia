// Action: RefreshAction

export type PageRefreshOutputAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshOutputAction: PageRefreshOutputAction = () => {
  return async function pageRefreshOutputAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
