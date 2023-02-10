///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Con::pros#PageRefresh
// Action owner name: edemokracia::Con.pros#View
// Action DataElement name: pros
// Action DataElement owner name: edemokracia::Con
// Action DataElement target name: edemokracia::Pro
// Owner Page name: edemokracia::Con.pros#View
// Action: RefreshAction

export type PageRefreshProsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshProsAction: PageRefreshProsAction = () => {
  return async function pageRefreshProsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
