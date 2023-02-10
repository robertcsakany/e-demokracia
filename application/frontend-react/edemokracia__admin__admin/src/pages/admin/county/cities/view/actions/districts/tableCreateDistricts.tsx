///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::City::districts#TableCreate
// Action owner name: edemokracia::admin::County.cities#View
// Action DataElement name: districts
// Action DataElement owner name: edemokracia::admin::City
// Action DataElement target name: edemokracia::admin::District
// Owner Page name: edemokracia::admin::County.cities#View
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import type { DialogOption } from '../../../../../../../components';
import { useSnackbar, useDialog } from '../../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../../components-api';

import {
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminCityServiceForDistrictsImpl, adminDistrictServiceImpl } from '../../../../../../../generated/data-axios';
import { TableCreateDistrictsForm } from './TableCreateDistrictsForm';

export type TableCreateDistrictsAction = () => (
  owner: AdminCityStored,
  successCallback: (result: AdminDistrictStored) => void,
) => void;

export const useTableCreateDistrictsAction: TableCreateDistrictsAction = () => {
  const [createDialog, closeDialog] = useDialog();

  return function tableCreateDistrictsAction(
    owner: AdminCityStored,
    successCallback: (result: AdminDistrictStored) => void,
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
        <TableCreateDistrictsForm
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
