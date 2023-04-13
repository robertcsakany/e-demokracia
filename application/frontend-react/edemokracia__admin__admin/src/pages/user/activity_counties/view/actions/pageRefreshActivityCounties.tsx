// Action: RefreshAction

export type PageRefreshActivityCountiesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshActivityCountiesAction: PageRefreshActivityCountiesAction = () => {
  return async function pageRefreshActivityCountiesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
