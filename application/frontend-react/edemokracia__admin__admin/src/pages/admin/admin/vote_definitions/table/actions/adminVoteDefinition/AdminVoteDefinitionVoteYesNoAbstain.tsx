//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CallOperationAction
// Is Access: yes
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
import { AdminVoteDefinitionVoteYesNoAbstainForm } from './AdminVoteDefinitionVoteYesNoAbstainForm';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  YesNoAbstainVoteInputStored,
  YesNoAbstainVoteInput,
  AdminVoteDefinition,
  EdemokraciaYesNoAbstainVoteValue,
  YesNoAbstainVoteInputQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type AdminVoteDefinitionVoteYesNoAbstainActionPostHandler = (ownerCallback: () => void) => Promise<void>;

export const ADMIN_VOTE_DEFINITION_VOTE_YES_NO_ABSTAIN_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY =
  'AdminVoteDefinitionVoteYesNoAbstainActionPostHandlerHook';
export type AdminVoteDefinitionVoteYesNoAbstainActionPostHandlerHook =
  () => AdminVoteDefinitionVoteYesNoAbstainActionPostHandler;

export type AdminVoteDefinitionVoteYesNoAbstainAction = () => (
  owner: AdminVoteDefinitionStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminVoteDefinitionVoteYesNoAbstainAction: AdminVoteDefinitionVoteYesNoAbstainAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler<AdminVoteDefinition>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminVoteDefinitionVoteYesNoAbstainAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t(
    'edemokracia.admin.Admin.voteDefinitions.Table.edemokracia.admin.VoteDefinition.voteYesNoAbstain',
    { defaultValue: 'VoteYesNoAbstain' },
  );
  const { service: customPostHandler } = useTrackService<AdminVoteDefinitionVoteYesNoAbstainActionPostHandlerHook>(
    `(${OBJECTCLASS}=${ADMIN_VOTE_DEFINITION_VOTE_YES_NO_ABSTAIN_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY})`,
  );
  const postHandler: AdminVoteDefinitionVoteYesNoAbstainActionPostHandler | undefined =
    customPostHandler && customPostHandler();

  return async function AdminVoteDefinitionVoteYesNoAbstainAction(
    owner: AdminVoteDefinitionStored,
    successCallback: () => void,
  ) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminVoteDefinitionVoteYesNoAbstainForm
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
