///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::users#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import { AdminUserStored, AdminUserQueryCustomizer, AdminUser } from '../../../../../../../generated/data-api';
import { adminAdminServiceForUsersImpl, adminUserServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteUsersAction = () => (selected: AdminUserStored, successCallback: () => void) => Promise<void>;

export const useRowDeleteUsersAction: RowDeleteUsersAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteUsersAction(selected: AdminUserStored, successCallback: () => void) {
    try {
      await adminUserServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
