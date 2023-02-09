///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::IssueCategory::subcategories#PageRefresh
// Action owner name: edemokracia::admin::IssueCategory.subcategories#View
// Action DataElement name: subcategories
// Action DataElement owner name: edemokracia::admin::IssueCategory
// Action DataElement target name: edemokracia::admin::IssueCategory
// Owner Page name: edemokracia::admin::IssueCategory.subcategories#View
// Action: RefreshAction

export type PageRefreshSubcategoriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshSubcategoriesAction: PageRefreshSubcategoriesAction = () => {
  return async function pageRefreshSubcategoriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
