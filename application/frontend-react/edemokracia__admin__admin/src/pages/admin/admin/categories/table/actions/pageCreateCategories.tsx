///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::categories#PageCreate
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import type { DialogOption } from '../../../../../../components';
import { useSnackbar, useDialog } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { errorHandling } from '../../../../../../utilities';

import {
  AdminIssueCategoryStored,
  AdminIssueCategoryMaskBuilder,
  AdminIssueCategory,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
  AdminUserMaskBuilder,
} from '../../../../../../generated/data-api';
import {
  adminAdminServiceForCategoriesImpl,
  adminIssueCategoryServiceImpl,
} from '../../../../../../generated/data-axios';
import { PageCreateCategoriesForm } from './PageCreateCategoriesForm';

export type PageCreateCategoriesAction = () => (successCallback: (result: AdminIssueCategoryStored) => void) => void;

export const usePageCreateCategoriesAction: PageCreateCategoriesAction = () => {
  const [createDialog, closeDialog] = useDialog();
  const [enqueueSnackbar] = useSnackbar();

  return function pageCreateCategoriesAction(successCallback: (result: AdminIssueCategoryStored) => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <PageCreateCategoriesForm
          successCallback={(result) => {
            closeDialog();
            successCallback(result);
          }}
          cancel={closeDialog}
        />
      ),
    });
  };
};
