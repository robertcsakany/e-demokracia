///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::closeDebate#ButtonCallOperation
// Action: CallOperationAction
// Is Access: yes
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: yes

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type { GridColDef, GridRenderCellParams, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { baseColumnConfig, toastConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import { AdminDebateCloseDebateForm } from './AdminDebateCloseDebateForm';
import {
  CloseDebateInputQueryCustomizer,
  AdminDashboardQueryCustomizer,
  VoteDefinitionQueryCustomizer,
  AdminDebateStored,
  CloseDebateInputStored,
  VoteDefinition,
  CloseDebateInput,
  AdminDashboardStored,
  VoteDefinitionStored,
  AdminDashboard,
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
  const title: string = t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.closeDebate', {
    defaultValue: 'Close debate',
  });

  return async function AdminDebateCloseDebateAction(owner: AdminDebateStored, successCallback: () => void) {
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
              ...toastConfig.success,
            });
            if (result) {
              navigate(`admin/debate/closedebate/output/${result.__signedIdentifier}`);
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
