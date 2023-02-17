///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::counties#PageCreate
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import type { DialogOption } from '../../../../../../components';
import { useSnackbar, useDialog } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { errorHandling } from '../../../../../../utilities';

import { AdminCountyQueryCustomizer, AdminCounty, AdminCountyStored } from '../../../../../../generated/data-api';
import { adminAdminServiceForCountiesImpl, adminCountyServiceImpl } from '../../../../../../generated/data-axios';
import { PageCreateCountiesForm } from './PageCreateCountiesForm';

export type PageCreateCountiesAction = () => (successCallback: (result: AdminCountyStored) => void) => void;

export const usePageCreateCountiesAction: PageCreateCountiesAction = () => {
  const [createDialog, closeDialog] = useDialog();
  const [enqueueSnackbar] = useSnackbar();

  return function pageCreateCountiesAction(successCallback: (result: AdminCountyStored) => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <PageCreateCountiesForm
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
