///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::Issue::attachments#PageRefresh
// Action owner name: edemokracia::Issue.attachments#View
// Action DataElement name: attachments
// Action DataElement owner name: edemokracia::Issue
// Action DataElement target name: edemokracia::IssueAttachment
// Owner Page name: edemokracia::Issue.attachments#View
// Action: RefreshAction

export type PageRefreshAttachmentsAction = () => (fetchData: () => Promise<void>) => Promise<void>;

export const usePageRefreshAttachmentsAction: PageRefreshAttachmentsAction = () => {
  return async function pageRefreshAttachmentsAction(fetchData: () => Promise<void>) {
    return fetchData();
  };
};