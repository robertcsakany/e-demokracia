///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::issues#PageDelete
// Action owner name: edemokracia::admin::Admin.issues#View
// Action DataElement name: issues
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::Issue
// Owner Page name: edemokracia::admin::Admin.issues#View
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import { AdminIssueQueryCustomizer, AdminIssue, AdminIssueStored } from '../../../../../../generated/data-api';
import { adminAdminServiceForIssuesImpl, adminIssueServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteIssuesAction = () => (selected: AdminIssueStored, successCallback: () => void) => Promise<void>;

export const usePageDeleteIssuesAction: PageDeleteIssuesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteIssuesAction(selected: AdminIssueStored, successCallback: () => void) {
    try {
      await adminIssueServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};