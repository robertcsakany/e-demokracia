///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::VoteDefinition::voteYesNoAbstain#ButtonCallOperation
// Action owner name: edemokracia::admin::Admin.voteDefinitions#View
// Action DataElement name: voteYesNoAbstain
// Action DataElement owner name: edemokracia::admin::VoteDefinition
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Admin.voteDefinitions#View
// Action: CallOperationAction
// Is Access: yes
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type { GridColDef, GridRenderCellParams, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { baseColumnConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import { AdminVoteDefinitionVoteYesNoAbstainForm } from './AdminVoteDefinitionVoteYesNoAbstainForm';
import {
  AdminVoteDefinitionStored,
  YesNoAbstainVoteInputStored,
  YesNoAbstainVoteInput,
  EdemokraciaYesNoAbstainVoteValue,
  YesNoAbstainVoteInputQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type AdminVoteDefinitionVoteYesNoAbstainAction = () => (
  owner: AdminVoteDefinitionStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminVoteDefinitionVoteYesNoAbstainAction: AdminVoteDefinitionVoteYesNoAbstainAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t(
    'edemokracia.admin.Admin.voteDefinitions.View.edemokracia.admin.VoteDefinition.voteYesNoAbstain',
    { defaultValue: 'VoteYesNoAbstain' },
  );

  return async function adminVoteDefinitionVoteYesNoAbstainAction(
    owner: AdminVoteDefinitionStored,
    successCallback: () => void,
  ) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminVoteDefinitionVoteYesNoAbstainForm
          successCallback={() => {
            closeDialog();
            enqueueSnackbar(title, {
              variant: 'success',
              autoHideDuration: 3000,
            });
            successCallback();
          }}
          cancel={closeDialog}
          owner={owner}
        />
      ),
    });
  };
};
