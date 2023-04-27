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
import { AdminVoteDefinitionVoteRatingForm } from './AdminVoteDefinitionVoteRatingForm';
import {
  AdminVoteDefinitionQueryCustomizer,
  RatingVoteInput,
  AdminVoteDefinitionStored,
  RatingVoteInputQueryCustomizer,
  AdminVoteDefinition,
  RatingVoteInputStored,
} from '../../../../../../../generated/data-api';

export type AdminVoteDefinitionVoteRatingActionPostHandler = (ownerCallback: () => void) => Promise<void>;

export const ADMIN_VOTE_DEFINITION_VOTE_RATING_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY =
  'AdminVoteDefinitionVoteRatingActionPostHandlerHook';
export type AdminVoteDefinitionVoteRatingActionPostHandlerHook = () => AdminVoteDefinitionVoteRatingActionPostHandler;

export type AdminVoteDefinitionVoteRatingAction = () => (
  owner: AdminVoteDefinitionStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminVoteDefinitionVoteRatingAction: AdminVoteDefinitionVoteRatingAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler<AdminVoteDefinition>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminVoteDefinitionVoteRatingAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Admin.voteDefinitions.Table.edemokracia.admin.VoteDefinition.voteRating', {
    defaultValue: 'VoteRating',
  });
  const { service: customPostHandler } = useTrackService<AdminVoteDefinitionVoteRatingActionPostHandlerHook>(
    `(${OBJECTCLASS}=${ADMIN_VOTE_DEFINITION_VOTE_RATING_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY})`,
  );
  const postHandler: AdminVoteDefinitionVoteRatingActionPostHandler | undefined =
    customPostHandler && customPostHandler();

  return async function AdminVoteDefinitionVoteRatingAction(
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
        <AdminVoteDefinitionVoteRatingForm
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
