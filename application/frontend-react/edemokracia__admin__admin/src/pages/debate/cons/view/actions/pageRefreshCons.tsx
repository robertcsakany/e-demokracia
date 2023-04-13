// Action: RefreshAction

export type PageRefreshConsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshConsAction: PageRefreshConsAction = () => {
  return async function pageRefreshConsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
