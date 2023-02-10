///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Comment::voteUp#ButtonCallOperation
// Action owner name: edemokracia::admin::Dashboard.issues#View
// Action DataElement name: voteUp
// Action DataElement owner name: edemokracia::admin::Comment
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Dashboard.issues#View
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: no
// InputParameterPage: no
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type { GridColDef, GridRenderCellParams, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { baseColumnConfig, toastConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import {
  AdminIssueQueryCustomizer,
  AdminIssue,
  AdminIssueStored,
  AdminCommentStored,
  AdminDashboardStored,
  AdminDashboard,
} from '../../../../../../../generated/data-api';
import { adminIssueServiceImpl, adminCommentServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminCommentVoteUpAction = () => (owner: AdminCommentStored, successCallback: () => void) => Promise<void>;

export const useAdminCommentVoteUpAction: AdminCommentVoteUpAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Dashboard.issues.View.edemokracia.admin.Comment.voteUp', {
    defaultValue: '',
  });

  return async function AdminCommentVoteUpAction(owner: AdminCommentStored, successCallback: () => void) {
    try {
      const result = await adminCommentServiceImpl.voteUp(owner);
      successCallback();
      enqueueSnackbar(title, {
        variant: 'success',
        ...toastConfig.success,
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};