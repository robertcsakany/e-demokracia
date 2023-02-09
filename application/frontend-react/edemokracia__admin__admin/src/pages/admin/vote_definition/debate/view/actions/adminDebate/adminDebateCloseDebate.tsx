///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::closeDebate#ButtonCallOperation
// Action owner name: edemokracia::admin::VoteDefinition.debate#View
// Action DataElement name: closeDebate
// Action DataElement owner name: edemokracia::admin::Debate
// Action DataElement target name:
// Owner Page name: edemokracia::admin::VoteDefinition.debate#View
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: yes

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type { GridColDef, GridRenderCellParams, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { baseColumnConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import { AdminDebateCloseDebateForm } from './AdminDebateCloseDebateForm';
import {
  CloseDebateInputQueryCustomizer,
  AdminDebateStored,
  CloseDebateInputStored,
  VoteDefinition,
  CloseDebateInput,
  VoteDefinitionStored,
  EdemokraciaVoteTypeOnCloseDebate,
} from '../../../../../../../generated/data-api';

export type AdminDebateCloseDebateAction = () => (
  owner: AdminDebateStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminDebateCloseDebateAction: AdminDebateCloseDebateAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Debate.closeDebate', {
    defaultValue: 'Close debate',
  });

  return async function adminDebateCloseDebateAction(owner: AdminDebateStored, successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminDebateCloseDebateForm
          successCallback={(result?: VoteDefinitionStored) => {
            closeDialog();
            enqueueSnackbar(title, {
              variant: 'success',
              autoHideDuration: 3000,
            });
            if (result) {
              // TODO: implement output handling for actions with input
              alert('Operation ran successfully but unmapped return types are not supported yet (with input)!');
            } else {
              successCallback();
            }
          }}
          cancel={closeDialog}
          owner={owner}
        />
      ),
    });
  };
};
