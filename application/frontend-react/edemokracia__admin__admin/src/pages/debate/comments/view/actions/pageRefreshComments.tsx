///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Debate::comments#PageRefresh
// Action owner name: edemokracia::Debate.comments#View
// Action DataElement name: comments
// Action DataElement owner name: edemokracia::Debate
// Action DataElement target name: edemokracia::Comment
// Owner Page name: edemokracia::Debate.comments#View
// Action: RefreshAction

export type PageRefreshCommentsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshCommentsAction: PageRefreshCommentsAction = () => {
  return async function pageRefreshCommentsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
