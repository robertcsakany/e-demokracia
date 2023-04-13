// Action: RefreshAction

export type PageRefreshIssueAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssueAction: PageRefreshIssueAction = () => {
  return async function pageRefreshIssueAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
