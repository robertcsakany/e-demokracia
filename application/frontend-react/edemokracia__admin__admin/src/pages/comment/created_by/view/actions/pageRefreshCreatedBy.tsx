///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Comment::createdBy#PageRefresh
// Action owner name: edemokracia::Comment.createdBy#View
// Action DataElement name: createdBy
// Action DataElement owner name: edemokracia::Comment
// Action DataElement target name: edemokracia::User
// Owner Page name: edemokracia::Comment.createdBy#View
// Action: RefreshAction

export type PageRefreshCreatedByAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCreatedByAction: PageRefreshCreatedByAction = () => {
  return async function pageRefreshCreatedByAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
