///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::createDebate#ButtonCallOperation
// Action owner name: edemokracia::admin::Debate.issue#View
// Action DataElement name: createDebate
// Action DataElement owner name: edemokracia::admin::Issue
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Debate.issue#View
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
import { AdminIssueCreateDebateForm } from './AdminIssueCreateDebateForm';
import {
  CreateDebateInputQueryCustomizer,
  CreateDebateInput,
  AdminIssueStored,
  Debate,
  DebateStored,
  CreateDebateInputStored,
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

  return async function adminIssueCreateDebateAction(owner: AdminIssueStored, successCallback: () => void) {
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
