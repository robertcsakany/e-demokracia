//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CallOperationAction
// Is Access: yes
// Is Mapped: no
// Is Static: yes
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: yes

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridSelectionModel,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useJudoNavigation, MdiIcon } from '../../../../../../components';
import { useDialog, useRangeDialog } from '../../../../../../components/dialog';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
} from '../../../../../../utilities';
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
  const handleActionError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminDashboardCreateUserAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
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
