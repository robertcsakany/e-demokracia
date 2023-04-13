// Action: RefreshAction

export type PageRefreshCategoriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCategoriesAction: PageRefreshCategoriesAction = () => {
  return async function pageRefreshCategoriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
