// Action: RefreshAction

export type PageRefreshProsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshProsAction: PageRefreshProsAction = () => {
  return async function pageRefreshProsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
