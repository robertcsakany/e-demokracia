// Action: RefreshAction

export type PageRefreshUsersAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshUsersAction: PageRefreshUsersAction = () => {
  return async function pageRefreshUsersAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
