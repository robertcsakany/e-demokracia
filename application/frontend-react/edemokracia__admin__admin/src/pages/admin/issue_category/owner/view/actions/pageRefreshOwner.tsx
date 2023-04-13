// Action: RefreshAction

export type PageRefreshOwnerAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshOwnerAction: PageRefreshOwnerAction = () => {
  return async function pageRefreshOwnerAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
