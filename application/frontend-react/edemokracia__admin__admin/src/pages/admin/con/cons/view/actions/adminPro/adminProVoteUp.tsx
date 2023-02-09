///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::voteUp#ButtonCallOperation
// Action owner name: edemokracia::admin::Con.cons#View
// Action DataElement name: voteUp
// Action DataElement owner name: edemokracia::admin::Pro
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Con.cons#View
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
import { AdminProStored, AdminConStored } from '../../../../../../../generated/data-api';
import { adminConServiceImpl, adminProServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminProVoteUpAction = () => (owner: AdminProStored, successCallback: () => void) => Promise<void>;

export const useAdminProVoteUpAction: AdminProVoteUpAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Con.cons.View.edemokracia.admin.Pro.voteUp', { defaultValue: '' });

  // TODO: implement mapped input selection

  return async function adminProVoteUpAction(owner: AdminProStored, successCallback: () => void) {
    try {
      const result = await adminProServiceImpl.voteUp(owner);
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
