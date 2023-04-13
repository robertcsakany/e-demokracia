// Action: RefreshAction

export type PageRefreshCreatedByAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCreatedByAction: PageRefreshCreatedByAction = () => {
  return async function pageRefreshCreatedByAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
