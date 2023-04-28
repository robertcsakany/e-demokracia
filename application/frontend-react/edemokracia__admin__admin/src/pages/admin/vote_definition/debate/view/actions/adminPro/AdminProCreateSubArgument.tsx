//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import { LoadingButton } from '@mui/lab';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridRowSelectionModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import { useSnackbar } from 'notistack';
import { useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { useDialog, useRangeDialog } from '../../../../../../../components/dialog';
import { baseColumnConfig, toastConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { useL10N } from '../../../../../../../l10n/l10n-context';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  serviceDateToUiDate,
  serviceTimeToUiTime,
} from '../../../../../../../utilities';
import { AdminProCreateSubArgumentForm } from './AdminProCreateSubArgumentForm';
import {
  AdminVoteDefinitionStored,
  AdminProStored,
  AdminDebate,
  CreateArgumentInputQueryCustomizer,
  CreateArgumentInputStored,
  EdemokraciaCreateArgumentInputType,
  AdminVoteDefinition,
  AdminPro,
  CreateArgumentInput,
  AdminDebateStored,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type AdminProCreateSubArgumentActionPostHandler = (ownerCallback: () => void) => Promise<void>;

export const ADMIN_PRO_CREATE_SUB_ARGUMENT_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY =
  'AdminProCreateSubArgumentActionPostHandlerHook';
export type AdminProCreateSubArgumentActionPostHandlerHook = () => AdminProCreateSubArgumentActionPostHandler;

export type AdminProCreateSubArgumentAction = () => (
  owner: AdminProStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminProCreateSubArgumentAction: AdminProCreateSubArgumentAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler<AdminPro>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminProCreateSubArgumentAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.createSubArgument', {
    defaultValue: 'Add argument',
  });
  const { service: customPostHandler } = useTrackService<AdminProCreateSubArgumentActionPostHandlerHook>(
    `(${OBJECTCLASS}=${ADMIN_PRO_CREATE_SUB_ARGUMENT_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY})`,
  );
  const postHandler: AdminProCreateSubArgumentActionPostHandler | undefined = customPostHandler && customPostHandler();

  return async function AdminProCreateSubArgumentAction(owner: AdminProStored, successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminProCreateSubArgumentForm
          successCallback={() => {
            closeDialog();
            if (postHandler) {
              postHandler(successCallback);
              return;
            }
            enqueueSnackbar(title, {
              variant: 'success',
              ...toastConfig.success,
            });
            successCallback();
          }}
          cancel={closeDialog}
          owner={owner}
        />
      ),
    });
  };
};
