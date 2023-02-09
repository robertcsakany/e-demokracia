///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::counties#PageCreate
// Owner Page name: edemokracia::admin::Admin.counties#Table
// Action: CreateAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Button,
  IconButton,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Paper,
  Box,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Card,
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridToolbarContainer,
  GridRenderCellParams,
  GridRowParams,
  GridColDef,
} from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
import {
  MdiIcon,
  ModeledTabs,
  TrinaryLogicCombobox,
  AggregationInput,
  useSnackbar,
  useRangeDialog,
  columnsActionCalculator,
} from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { AdminCountyQueryCustomizer, AdminCounty, AdminCountyStored } from '../../../../../../generated/data-api';
import { adminAdminServiceForCountiesImpl, adminCountyServiceImpl } from '../../../../../../generated/data-axios';
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig } from '../../../../../../config';

export interface PageCreateCountiesFormProps {
  successCallback: (result: AdminCountyStored) => void;
  cancel: () => void;
}

export function PageCreateCountiesForm({ successCallback, cancel }: PageCreateCountiesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCounty>({} as unknown as AdminCounty);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );

  const title: string = t('edemokracia.admin.Admin.counties.County.Form', { defaultValue: 'Create county' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCountyServiceImpl.getTemplate();
      setData(res);
    } finally {
      // ignore potential errors for now
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
      errorHandling(error, enqueueSnackbar, { setValidation });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
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
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
          <Grid item>
            <TextField
              name="name"
              id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Admin.counties/Create/default/County_Form/name"
              label={t('edemokracia.admin.Admin.counties.County.Form.name', { defaultValue: 'County name' }) as string}
              value={data.name}
              error={!!validation.get('name')}
              helperText={validation.get('name')}
              onChange={(event) => storeDiff('name', event.target.value)}
              className={false || !editMode ? 'Mui-readOnly' : undefined}
              InputLabelProps={{ shrink: true }}
              InputProps={{
                readOnly: false || !editMode,
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
        <Button variant="text" onClick={() => cancel()} disabled={isLoading}>
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button variant="contained" onClick={() => saveData()} disabled={isLoading}>
          {t('judo.pages.create', { defaultValue: 'Create' })}
        </Button>
      </DialogActions>
    </>
  );
}
