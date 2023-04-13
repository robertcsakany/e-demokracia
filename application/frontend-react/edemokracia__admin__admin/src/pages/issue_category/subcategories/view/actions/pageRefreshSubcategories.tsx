// Action: RefreshAction

export type PageRefreshSubcategoriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshSubcategoriesAction: PageRefreshSubcategoriesAction = () => {
  return async function pageRefreshSubcategoriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
