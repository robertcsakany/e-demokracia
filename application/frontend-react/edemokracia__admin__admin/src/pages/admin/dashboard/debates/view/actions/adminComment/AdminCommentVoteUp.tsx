//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: no
// InputParameterPage: no
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridSelectionModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
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
} from '../../../../../../../utilities';
import {
  AdminDebate,
  AdminDebateStored,
  AdminCommentStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminDebateServiceImpl, adminCommentServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminCommentVoteUpAction = () => (owner: AdminCommentStored, successCallback: () => void) => Promise<void>;

export const useAdminCommentVoteUpAction: AdminCommentVoteUpAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler<AdminCommentStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminCommentVoteUpAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Comment.voteUp', {
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
      handleActionError(error, undefined, owner);
    }
  };
};
