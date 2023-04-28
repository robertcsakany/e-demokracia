//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import { LoadingButton } from '@mui/lab';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { JudoIdentifiable } from '@judo/data-api-common';
import { useJudoNavigation } from '../../../../../../../components';
import type { DialogOption } from '../../../../../../../components/dialog';
import { useDialog } from '../../../../../../../components/dialog';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../../utilities';

import {
  AdminCityQueryCustomizer,
  AdminCityStored,
  AdminCounty,
  AdminCountyStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { adminCountyServiceForCitiesImpl, adminCityServiceImpl } from '../../../../../../../generated/data-axios';
import { TableCreateCitiesForm } from './TableCreateCitiesForm';

export type TableCreateCitiesAction = () => (owner: JudoIdentifiable<AdminCity>, successCallback: () => void) => void;

export const useTableCreateCitiesAction: TableCreateCitiesAction = () => {
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const { enqueueSnackbar } = useSnackbar();

  return function tableCreateCitiesAction(owner: JudoIdentifiable<AdminCity>, successCallback: () => void) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <TableCreateCitiesForm
          successCallback={() => {
            closeDialog();
            successCallback();
          }}
          cancel={closeDialog}
          owner={owner}
        />
      ),
    });
  };
};
