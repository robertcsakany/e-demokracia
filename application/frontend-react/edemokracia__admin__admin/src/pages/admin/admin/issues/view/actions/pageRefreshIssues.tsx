// Action: RefreshAction

export type PageRefreshIssuesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssuesAction: PageRefreshIssuesAction = () => {
  return async function pageRefreshIssuesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
