///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Issue::categories#PageRefresh
// Action owner name: edemokracia::Issue.categories#View
// Action DataElement name: categories
// Action DataElement owner name: edemokracia::Issue
// Action DataElement target name: edemokracia::IssueCategory
// Owner Page name: edemokracia::Issue.categories#View
// Action: RefreshAction

export type PageRefreshCategoriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCategoriesAction: PageRefreshCategoriesAction = () => {
  return async function pageRefreshCategoriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
