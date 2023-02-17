///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::voteDown#ButtonCallOperation
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
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../components';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../utilities';
import {
  AdminProStored,
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
  AdminPro,
} from '../../../../../../generated/data-api';
import { adminConServiceImpl, adminProServiceImpl } from '../../../../../../generated/data-axios';

export type VoteDownAction = () => (owner: AdminProStored, successCallback: () => void) => Promise<void>;

export const useVoteDownAction: VoteDownAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Pro.cons.View.edemokracia.admin.Pro.voteDown', { defaultValue: '' });

  return async function voteDownAction(owner: AdminProStored, successCallback: () => void) {
    try {
      const result = await adminProServiceImpl.voteDown(owner);
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
