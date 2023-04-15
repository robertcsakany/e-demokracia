// Action: RefreshAction

export type PageRefreshIssueTypesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshIssueTypesAction: PageRefreshIssueTypesAction = () => {
  return async function pageRefreshIssueTypesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
