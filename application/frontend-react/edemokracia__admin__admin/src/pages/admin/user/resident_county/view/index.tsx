///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::User.residentCounty#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: residentCounty
// Page DataElement owner name: edemokracia::admin::User

import { useEffect, useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Button,
  Card,
  CardContent,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Paper,
  Divider,
  RadioGroup,
  FormControlLabel,
  Radio,
} from '@mui/material';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSortItem,
  GridToolbarContainer,
  GridRowParams,
} from '@mui/x-data-grid';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import { useParams } from 'react-router-dom';
import type { Dayjs } from 'dayjs';
import {
  columnsActionCalculator,
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  TrinaryLogicCombobox,
  useJudoNavigation,
  useRangeDialog,
  AggregationInput,
  useSnackbar,
} from '../../../../../components';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminCityMaskBuilder,
  AdminCountyQueryCustomizer,
  AdminUser,
  AdminCounty,
  AdminCountyStored,
  AdminCityStored,
  AdminCity,
} from '../../../../../generated/data-api';
import { adminUserServiceImpl, adminCountyServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminUserResidentCountyView } from './hooks/useAdminUserResidentCountyView';
import {
  useRowViewCitiesAction,
  usePageRefreshResidentCountyAction,
  useRowEditCitiesAction,
  useRowDeleteCitiesAction,
  useTableCreateCitiesAction,
  usePageEditResidentCountyAction,
} from './actions';

/**
 * Name: edemokracia::admin::User.residentCounty#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminUserResidentCountyView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const rowViewCitiesAction = useRowViewCitiesAction();
  const pageRefreshResidentCountyAction = usePageRefreshResidentCountyAction();
  const rowEditCitiesAction = useRowEditCitiesAction();
  const rowDeleteCitiesAction = useRowDeleteCitiesAction();
  const tableCreateCitiesAction = useTableCreateCitiesAction();
  const pageEditResidentCountyAction = usePageEditResidentCountyAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer, citiesColumns, citiesRangeFilterOptions, citiesInitialQueryCustomizer } =
    useAdminUserResidentCountyView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCountyStored>({} as unknown as AdminCountyStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<string, any>>({});
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [citiesSortModel, setCitiesSortModel] = useState<GridSortModel>([{ field: 'name', sort: 'asc' }]);

  const citiesRowActions: TableRowAction<AdminCityStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminCityStored) => rowDeleteCitiesAction(data, row, () => fetchData()),
      disabled: (row: AdminCityStored) => !row.__deleteable,
    },
  ];
  const title: string = data.representation as string;

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCountyServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminCounty>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    } finally {
      setIsLoading(false);
    }
  };

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCountyServiceImpl.update(payloadDiff);

      if (res) {
        await fetchData();
        setEditMode(false);
      }
    } catch (error) {
      errorHandling(error, enqueueSnackbar, { setValidation });
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<string, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid item>
            <Button onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button onClick={() => setEditMode(true)} disabled={isLoading || !data.__updateable}>
              <MdiIcon path="pencil" />
              {t('judo.pages.edit', { defaultValue: 'Edit' })}
            </Button>
          </Grid>
        )}
        {editMode && (
          <Grid item>
            <Button
              variant="outlined"
              onClick={() => {
                setEditMode(false);
                fetchData();
              }}
              disabled={isLoading}
            >
              <MdiIcon path="cancel" />
              {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
            </Button>
          </Grid>
        )}
        {editMode && (
          <Grid item>
            <Button onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
            </Button>
          </Grid>
        )}
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid
            container
            xs={12}
            sm={12}
            spacing={2}
            direction="column"
            alignItems="stretch"
            justifyContent="flex-start"
          >
            <Grid item xs={12} sm={12}>
              <TextField
                required
                name="name"
                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/User.residentCounty/View/default/County_View/name"
                label={
                  t('edemokracia.admin.User.residentCounty.County.View.name', { defaultValue: 'County name' }) as string
                }
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

            <Grid item xs={12} sm={12}>
              <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                    <MdiIcon path="city" />
                    <Typography variant="h6" component="h1">
                      {t('edemokracia.admin.User.residentCounty.County.View.cities.cities.Label', {
                        defaultValue: 'Cities',
                      })}
                    </Typography>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12}>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                    <DataGrid
                      {...baseTableConfig}
                      getRowId={(row: { __identifier: string }) => row.__identifier}
                      loading={isLoading}
                      rows={data?.cities ?? []}
                      columns={[...citiesColumns, ...columnsActionCalculator(citiesRowActions, { shownActions: 2 })]}
                      disableSelectionOnClick
                      onRowClick={(params: GridRowParams<AdminCityStored>) => rowViewCitiesAction(params.row)}
                      sortModel={citiesSortModel}
                      onSortModelChange={(newModel: GridSortModel) => {
                        setCitiesSortModel(newModel);
                      }}
                      components={{
                        Toolbar: () => (
                          <GridToolbarContainer>
                            <Button
                              onClick={() => tableCreateCitiesAction(data, () => fetchData())}
                              disabled={isLoading || editMode}
                            >
                              <MdiIcon path="note_add" />
                              {t('judo.pages.table.create', { defaultValue: 'Create' })}
                            </Button>
                          </GridToolbarContainer>
                        ),
                      }}
                    />
                  </Grid>
                </Grid>
              </Grid>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
