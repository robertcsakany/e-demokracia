///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::debates#RowDelete
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
