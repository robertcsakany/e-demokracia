///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::County::cities#TableCreate
// Action owner name: edemokracia::admin::User.activityCounties#View
// Action DataElement name: cities
// Action DataElement owner name: edemokracia::admin::County
// Action DataElement target name: edemokracia::admin::City
// Owner Page name: edemokracia::admin::User.activityCounties#View
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import type { DialogOption } from '../../../../../../../components';
import { useSnackbar, useDialog } from '../../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../../components-api';

import {
  AdminCityQueryCustomizer,
  AdminCityStored,
  AdminCounty,
  AdminCountyStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { adminCountyServiceForCitiesImpl, adminCityServiceImpl } from '../../../../../../../generated/data-axios';
import { TableCreateCitiesForm } from './TableCreateCitiesForm';

export type TableCreateCitiesAction = () => (
  owner: AdminCountyStored,
  successCallback: (result: AdminCityStored) => void,
) => void;

export const useTableCreateCitiesAction: TableCreateCitiesAction = () => {
  const [createDialog, closeDialog] = useDialog();

  return function tableCreateCitiesAction(
    owner: AdminCountyStored,
    successCallback: (result: AdminCityStored) => void,
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
        <TableCreateCitiesForm
          successCallback={(result) => {
            closeDialog();
            successCallback(result);
          }}
          cancel={closeDialog}
          owner={owner}
        />
      ),
    });
  };
};
