///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::IssueCategory::subcategories#PageRefresh
// Action owner name: edemokracia::IssueCategory.subcategories#View
// Action DataElement name: subcategories
// Action DataElement owner name: edemokracia::IssueCategory
// Action DataElement target name: edemokracia::IssueCategory
// Owner Page name: edemokracia::IssueCategory.subcategories#View
// Action: RefreshAction

export type PageRefreshSubcategoriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshSubcategoriesAction: PageRefreshSubcategoriesAction = () => {
  return async function pageRefreshSubcategoriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
