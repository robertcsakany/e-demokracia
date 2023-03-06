///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::createDebate#ButtonCallOperation
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
import { baseColumnConfig, toastConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import { AdminIssueCreateDebateForm } from './AdminIssueCreateDebateForm';
import {
  AdminIssueQueryCustomizer,
  DebateQueryCustomizer,
  CreateDebateInputQueryCustomizer,
  AdminDebate,
  AdminIssue,
  CreateDebateInput,
  AdminIssueStored,
  Debate,
  DebateStored,
  CreateDebateInputStored,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';

export type AdminIssueCreateDebateAction = () => (
  owner: AdminIssueStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminIssueCreateDebateAction: AdminIssueCreateDebateAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Debate.issue.View.edemokracia.admin.Issue.createDebate', {
    defaultValue: 'Create debate',
  });

  return async function AdminIssueCreateDebateAction(owner: AdminIssueStored, successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminIssueCreateDebateForm
          successCallback={(result?: DebateStored) => {
            closeDialog();
            enqueueSnackbar(title, {
              variant: 'success',
              ...toastConfig.success,
            });
            if (result) {
              navigate(`admin/issue/createdebate/output/${result.__signedIdentifier}`);
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
