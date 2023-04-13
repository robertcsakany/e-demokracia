// Action: RefreshAction

export type PageRefreshResidentCountyAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshResidentCountyAction: PageRefreshResidentCountyAction = () => {
  return async function pageRefreshResidentCountyAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
