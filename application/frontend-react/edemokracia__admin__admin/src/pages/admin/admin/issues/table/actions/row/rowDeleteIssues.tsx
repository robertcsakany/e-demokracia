//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: DeleteAction

import { useTranslation } from 'react-i18next';
import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../../utilities';
import { useConfirmDialog } from '../../../../../../../components/dialog';
import { AdminIssueQueryCustomizer, AdminIssue, AdminIssueStored } from '../../../../../../../generated/data-api';
import { adminAdminServiceForIssuesImpl, adminIssueServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteIssuesAction = () => (selected: AdminIssueStored, successCallback: () => void) => Promise<void>;

export const useRowDeleteIssuesAction: RowDeleteIssuesAction = () => {
  const { t } = useTranslation();
  const { enqueueSnackbar } = useSnackbar();
  const { openConfirmDialog } = useConfirmDialog();
  const handleActionError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowDeleteAction))`,
  );

  return async function rowDeleteIssuesAction(selected: AdminIssueStored, successCallback: () => void) {
    try {
      const confirmed = await openConfirmDialog(
        'row-delete-action',
        t('judo.modal.confirm.confirm-delete', {
          defaultValue: 'Are you sure you would like to delete the selected element?',
        }),
        t('judo.modal.confirm.confirm-title', { defaultValue: 'Confirm action' }),
      );

      if (confirmed) {
        await adminIssueServiceImpl.delete(selected);

        successCallback();
      }
    } catch (error) {
      handleActionError(error);
    }
  };
};
