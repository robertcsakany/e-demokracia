///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::debates#RowDelete
// Action owner name: edemokracia::admin::Admin.debates#Table
// Action DataElement name: debates
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::Debate
// Owner Page name: edemokracia::admin::Admin.debates#Table
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import { AdminDebate, AdminDebateStored, AdminDebateQueryCustomizer } from '../../../../../../../generated/data-api';
import { adminAdminServiceForDebatesImpl, adminDebateServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteDebatesAction = () => (selected: AdminDebateStored, successCallback: () => void) => Promise<void>;

export const useRowDeleteDebatesAction: RowDeleteDebatesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteDebatesAction(selected: AdminDebateStored, successCallback: () => void) {
    try {
      await adminDebateServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
