///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::createComment#ButtonCallOperation
// Action owner name: edemokracia::admin::VoteDefinition.debate#View
// Action DataElement name: createComment
// Action DataElement owner name: edemokracia::admin::Debate
// Action DataElement target name:
// Owner Page name: edemokracia::admin::VoteDefinition.debate#View
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type { GridColDef, GridRenderCellParams, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { baseColumnConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import { AdminDebateCreateCommentForm } from './AdminDebateCreateCommentForm';
import {
  CreateCommentInputStored,
  CreateCommentInputQueryCustomizer,
  CreateCommentInput,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';

export type AdminDebateCreateCommentAction = () => (
  owner: AdminDebateStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminDebateCreateCommentAction: AdminDebateCreateCommentAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Debate.createComment', {
    defaultValue: 'Add comment',
  });

  return async function adminDebateCreateCommentAction(owner: AdminDebateStored, successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminDebateCreateCommentForm
          successCallback={() => {
            closeDialog();
            enqueueSnackbar(title, {
              variant: 'success',
              autoHideDuration: 3000,
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
