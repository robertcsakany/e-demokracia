///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::debates#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../../utilities';
import {
  AdminDebate,
  AdminDebateStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminDashboardServiceForDebatesImpl, adminDebateServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteDebatesAction = () => (
  owner: JudoIdentifiable<AdminDashboard>,
  selected: AdminDebateStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteDebatesAction: RowDeleteDebatesAction = () => {
  const { enqueueSnackbar } = useSnackbar();
  const handleActionError = useErrorHandler<JudoIdentifiable<AdminDashboard>>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowDeleteAction))`,
  );

  return async function rowDeleteDebatesAction(
    owner: JudoIdentifiable<AdminDashboard>,
    selected: AdminDebateStored,
    successCallback: () => void,
  ) {
    try {
      await adminDebateServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      handleActionError(error);
    }
  };
};
