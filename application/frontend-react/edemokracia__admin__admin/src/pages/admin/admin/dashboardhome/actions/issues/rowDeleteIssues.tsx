///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::issues#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../utilities';
import {
  AdminIssueQueryCustomizer,
  AdminIssue,
  AdminIssueStored,
  AdminDashboardStored,
  AdminDashboard,
} from '../../../../../../generated/data-api';
import { adminDashboardServiceForIssuesImpl, adminIssueServiceImpl } from '../../../../../../generated/data-axios';

export type RowDeleteIssuesAction = () => (
  owner: JudoIdentifiable<AdminDashboard>,
  selected: AdminIssueStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteIssuesAction: RowDeleteIssuesAction = () => {
  const { enqueueSnackbar } = useSnackbar();
  const handleActionError = useErrorHandler<JudoIdentifiable<AdminDashboard>>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowDeleteAction))`,
  );

  return async function rowDeleteIssuesAction(
    owner: JudoIdentifiable<AdminDashboard>,
    selected: AdminIssueStored,
    successCallback: () => void,
  ) {
    try {
      await adminIssueServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      handleActionError(error);
    }
  };
};
