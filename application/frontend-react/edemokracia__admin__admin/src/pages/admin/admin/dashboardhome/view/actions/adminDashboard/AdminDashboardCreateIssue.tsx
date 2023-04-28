//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
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
import { LoadingButton } from '@mui/lab';
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
  serviceTimeToUiTime,
} from '../../../../../../../utilities';
import { AdminDashboardCreateIssueForm } from './AdminDashboardCreateIssueForm';
import {
  AdminIssueTypeMaskBuilder,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminCreateIssueInputStored,
  AdminDistrictQueryCustomizer,
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminCreateIssueInput,
  AdminCityStored,
  AdminCountyStored,
  AdminDashboardStored,
  AdminIssueTypeStored,
  AdminDashboard,
  AdminCreateIssueInputQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminCountyMaskBuilder,
  AdminIssue,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminDistrictMaskBuilder,
} from '../../../../../../../generated/data-api';

export type AdminDashboardCreateIssueActionPostHandler = (
  ownerCallback: () => void,
  result?: AdminIssueStored,
) => Promise<void>;

export const ADMIN_DASHBOARD_CREATE_ISSUE_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY =
  'AdminDashboardCreateIssueActionPostHandlerHook';
export type AdminDashboardCreateIssueActionPostHandlerHook = () => AdminDashboardCreateIssueActionPostHandler;

export type AdminDashboardCreateIssueAction = () => (successCallback: () => void) => Promise<void>;

export const useAdminDashboardCreateIssueAction: AdminDashboardCreateIssueAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminDashboardCreateIssueAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Dashboard.createIssue', {
    defaultValue: 'Create issue',
  });
  const { service: customPostHandler } = useTrackService<AdminDashboardCreateIssueActionPostHandlerHook>(
    `(${OBJECTCLASS}=${ADMIN_DASHBOARD_CREATE_ISSUE_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY})`,
  );
  const postHandler: AdminDashboardCreateIssueActionPostHandler | undefined = customPostHandler && customPostHandler();

  return async function AdminDashboardCreateIssueAction(successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <AdminDashboardCreateIssueForm
          successCallback={(result?: AdminIssueStored) => {
            closeDialog();
            if (postHandler) {
              postHandler(successCallback, result);
              return;
            }
            enqueueSnackbar(title, {
              variant: 'success',
              ...toastConfig.success,
            });
            if (result) {
              navigate(`admin/dashboard/createissue/output/${result.__signedIdentifier}`);
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
