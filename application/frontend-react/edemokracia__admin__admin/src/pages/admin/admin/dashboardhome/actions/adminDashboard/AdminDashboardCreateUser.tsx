///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::createUser#ButtonCallOperation
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
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../components';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../utilities';
import { AdminDashboardCreateUserForm } from './AdminDashboardCreateUserForm';
import {
  AdminCreateUserInputQueryCustomizer,
  AdminDashboardQueryCustomizer,
  AdminCreateUserInputStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminCreateUserInput,
  AdminUser,
  AdminDashboardStored,
  AdminDashboard,
} from '../../../../../../generated/data-api';

export type AdminDashboardCreateUserAction = () => (successCallback: () => void) => Promise<void>;

export const useAdminDashboardCreateUserAction: AdminDashboardCreateUserAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Dashboard.createUser', {
    defaultValue: 'Create user',
  });

  return async function AdminDashboardCreateUserAction(successCallback: () => void) {
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
              ...toastConfig.success,
            });
            if (result) {
              navigate(`admin/dashboard/createuser/output/${result.__signedIdentifier}`);
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
