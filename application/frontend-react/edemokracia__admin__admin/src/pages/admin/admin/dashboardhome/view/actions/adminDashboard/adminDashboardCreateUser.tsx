///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::createUser#ButtonCallOperation
// Action owner name: edemokracia::admin::Admin.dashboardhome#View
// Action DataElement name: createUser
// Action DataElement owner name: edemokracia::admin::Dashboard
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Admin.dashboardhome#View
// Action: CallOperationAction
// Is Access: yes
// Is Mapped: no
// Is Static: yes
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
import { AdminDashboardCreateUserForm } from './AdminDashboardCreateUserForm';
import {
  AdminCreateUserInputQueryCustomizer,
  AdminCreateUserInputStored,
  AdminUserStored,
  AdminCreateUserInput,
  AdminUser,
  AdminDashboardStored,
} from '../../../../../../../generated/data-api';

export type AdminDashboardCreateUserAction = () => (successCallback: () => void) => Promise<void>;

export const useAdminDashboardCreateUserAction: AdminDashboardCreateUserAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Dashboard.createUser', {
    defaultValue: 'Create user',
  });

  return async function adminDashboardCreateUserAction(successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminDashboardCreateUserForm
          successCallback={(result?: AdminUserStored) => {
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
        />
      ),
    });
  };
};
