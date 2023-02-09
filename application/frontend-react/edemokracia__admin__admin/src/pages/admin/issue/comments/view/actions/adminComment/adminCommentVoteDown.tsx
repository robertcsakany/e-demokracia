///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Comment::voteDown#ButtonCallOperation
// Action owner name: edemokracia::admin::Issue.comments#View
// Action DataElement name: voteDown
// Action DataElement owner name: edemokracia::admin::Comment
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Issue.comments#View
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
import { baseColumnConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import { AdminCommentStored } from '../../../../../../../generated/data-api';
import { adminCommentServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminCommentVoteDownAction = () => (
  owner: AdminCommentStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminCommentVoteDownAction: AdminCommentVoteDownAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Issue.comments.View.edemokracia.admin.Comment.voteDown', {
    defaultValue: '',
  });

  // TODO: implement mapped input selection

  return async function adminCommentVoteDownAction(owner: AdminCommentStored, successCallback: () => void) {
    try {
      const result = await adminCommentServiceImpl.voteDown(owner);
      successCallback();
      enqueueSnackbar(title, {
        variant: 'success',
        autoHideDuration: 3000,
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }

    // TODO: implement output handling
  };
};
