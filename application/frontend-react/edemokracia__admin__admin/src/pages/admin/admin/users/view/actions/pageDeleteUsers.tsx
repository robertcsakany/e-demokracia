///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::users#PageDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../utilities';
import { AdminUserStored, AdminUserQueryCustomizer, AdminUser } from '../../../../../../generated/data-api';
import { adminAdminServiceForUsersImpl, adminUserServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteUsersAction = () => (selected: AdminUserStored, successCallback: () => void) => Promise<void>;

export const usePageDeleteUsersAction: PageDeleteUsersAction = () => {
  const { enqueueSnackbar } = useSnackbar();
  const handleActionError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowDeleteAction))`,
  );

  return async function pageDeleteUsersAction(selected: AdminUserStored, successCallback: () => void) {
    try {
      await adminUserServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      handleActionError(error);
    }
  };
};
