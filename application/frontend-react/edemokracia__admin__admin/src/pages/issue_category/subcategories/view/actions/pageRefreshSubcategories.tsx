///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::IssueCategory::subcategories#PageRefresh
// Action: RefreshAction

export type PageRefreshSubcategoriesAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshSubcategoriesAction: PageRefreshSubcategoriesAction = () => {
  return async function pageRefreshSubcategoriesAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
