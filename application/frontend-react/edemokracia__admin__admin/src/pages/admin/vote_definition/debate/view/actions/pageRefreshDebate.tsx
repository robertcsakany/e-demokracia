///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::VoteDefinition::debate#PageRefresh
// Action owner name: edemokracia::admin::VoteDefinition.debate#View
// Action DataElement name: debate
// Action DataElement owner name: edemokracia::admin::VoteDefinition
// Action DataElement target name: edemokracia::admin::Debate
// Owner Page name: edemokracia::admin::VoteDefinition.debate#View
// Action: RefreshAction

export type PageRefreshDebateAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshDebateAction: PageRefreshDebateAction = () => {
  return async function pageRefreshDebateAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};
