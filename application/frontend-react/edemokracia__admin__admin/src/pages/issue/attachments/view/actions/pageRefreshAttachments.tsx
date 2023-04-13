// Action: RefreshAction

export type PageRefreshAttachmentsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshAttachmentsAction: PageRefreshAttachmentsAction = () => {
  return async function pageRefreshAttachmentsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
