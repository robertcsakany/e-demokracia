// Action: RefreshAction

export type PageRefreshIssueTypeAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssueTypeAction: PageRefreshIssueTypeAction = () => {
  return async function pageRefreshIssueTypeAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
