//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
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
  GridRowSelectionModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
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
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';
import { adminConServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminConVoteUpActionPostHandler = (ownerCallback: () => void) => Promise<void>;

export const ADMIN_CON_VOTE_UP_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY = 'AdminConVoteUpActionPostHandlerHook';
export type AdminConVoteUpActionPostHandlerHook = () => AdminConVoteUpActionPostHandler;

export type AdminConVoteUpAction = () => (owner: AdminConStored, successCallback: () => void) => Promise<void>;

export const useAdminConVoteUpAction: AdminConVoteUpAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler<AdminCon>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminConVoteUpAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Con.voteUp', { defaultValue: '' });
  const { service: customPostHandler } = useTrackService<AdminConVoteUpActionPostHandlerHook>(
    `(${OBJECTCLASS}=${ADMIN_CON_VOTE_UP_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY})`,
  );
  const postHandler: AdminConVoteUpActionPostHandler | undefined = customPostHandler && customPostHandler();

  return async function AdminConVoteUpAction(owner: AdminConStored, successCallback: () => void) {
    try {
      const result = await adminConServiceImpl.voteUp(owner);
      if (postHandler) {
        postHandler(successCallback);
        return;
      }
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
