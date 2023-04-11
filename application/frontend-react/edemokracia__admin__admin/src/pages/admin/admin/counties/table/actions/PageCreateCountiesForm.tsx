///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::counties#PageCreate
// Action: CreateAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  DialogTitle,
  DialogContent,
  CardContent,
  IconButton,
  Button,
  DialogContentText,
  TextField,
  DialogActions,
  Card,
  InputAdornment,
} from '@mui/material';
import {
  GridRowId,
  GridRowParams,
  GridRenderCellParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridColDef,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import { useSnackbar } from 'notistack';
import { v1 as uuidv1 } from 'uuid';
import { MdiIcon, ModeledTabs } from '../../../../../../components';
import { columnsActionCalculator } from '../../../../../../components/table';
import { useRangeDialog } from '../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../components/widgets';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { AdminCountyQueryCustomizer, AdminCounty, AdminCountyStored } from '../../../../../../generated/data-api';
import { adminAdminServiceForCountiesImpl, adminCountyServiceImpl } from '../../../../../../generated/data-axios';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../custom';

export interface PageCreateCountiesFormProps {
  successCallback: (result: AdminCountyStored) => void;
  cancel: () => void;
}

export function PageCreateCountiesForm({ successCallback, cancel }: PageCreateCountiesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleCreateError = useErrorHandler<AdminCounty>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Create)(component=PageCreateCountiesForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCounty>({
    __referenceId: uuidv1(),
  } as unknown as AdminCounty);
  const [validation, setValidation] = useState<Map<keyof AdminCounty, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof AdminCounty, any>>({} as unknown as Record<keyof AdminCounty, any>);
  const storeDiff: (attributeName: keyof AdminCounty, value: any) => void = useCallback(
    (attributeName: keyof AdminCounty, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Admin.counties.Create', { defaultValue: 'Create county' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCountyServiceImpl.getTemplate();
      setData((prevData) => ({ ...prevData, ...res }));
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminAdminServiceForCountiesImpl.createCounties(data);

      if (res) {
        successCallback(res);
      }
    } catch (error) {
      handleCreateError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminCountiesTableEdemokraciaAdminAdminEdemokraciaAdminAdminCountiesPageCreate-dialog-close"
          aria-label="close"
          onClick={() => cancel()}
          sx={{
            position: 'absolute',
            right: 8,
            top: 8,
            color: (theme) => theme.palette.grey[500],
          }}
        >
          <MdiIcon path="close" />
        </IconButton>
      </DialogTitle>
      <DialogContent dividers>
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch" justifyContent="flex-start">
          <Grid item xs={12} sm={12}>
            <TextField
              required
              name="name"
              id="TextInputedemokraciaAdminAdminEdemokraciaAdminAdminCountiesCreateDefaultCountyFormName"
              label={t('edemokracia.admin.Admin.counties.County.Form.name', { defaultValue: 'County name' }) as string}
              value={data.name}
              className={!editMode ? 'JUDO-viewMode' : undefined}
              disabled={false}
              error={!!validation.get('name')}
              helperText={validation.get('name')}
              onChange={(event) => {
                setEditMode(true);
                storeDiff('name', event.target.value);
              }}
              InputLabelProps={{ shrink: true }}
              InputProps={{
                startAdornment: (
                  <InputAdornment position="start">
                    <MdiIcon path="text_fields" />
                  </InputAdornment>
                ),
              }}
            />
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminCountiesTableEdemokraciaAdminAdminEdemokraciaAdminAdminCountiesPageCreate-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminCountiesTableEdemokraciaAdminAdminEdemokraciaAdminAdminCountiesPageCreate-action-form-action-create"
          variant="contained"
          onClick={() => saveData()}
          disabled={isLoading}
        >
          {t('judo.pages.create', { defaultValue: 'Create' })}
        </Button>
      </DialogActions>
    </>
  );
}
