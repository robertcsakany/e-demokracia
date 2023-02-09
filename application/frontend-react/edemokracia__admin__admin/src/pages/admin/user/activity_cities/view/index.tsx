///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::User.activityCities#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: activityCities
// Page DataElement owner name: edemokracia::admin::User

import { useEffect, useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Button,
  Card,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Paper,
} from '@mui/material';
import { DataGrid, GridRowId, GridSortModel, GridToolbarContainer, GridRowParams } from '@mui/x-data-grid';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import { useParams } from 'react-router-dom';
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
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../../utilities';
import { baseTableConfig } from '../../../../../config';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminDistrict,
  AdminUser,
  AdminDistrictMaskBuilder,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminUserServiceImpl, adminCityServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminUserActivityCitiesView } from './hooks/useAdminUserActivityCitiesView';
import {
  usePageRefreshActivityCitiesAction,
  usePageBackActivityCitiesAction,
  useRowEditDistrictsAction,
  useTableCreateDistrictsAction,
  useRowDeleteDistrictsAction,
  useRowViewDistrictsAction,
  usePageEditActivityCitiesAction,
} from './actions';

/**
 * Name: edemokracia::admin::User.activityCities#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminUserActivityCitiesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshActivityCitiesAction = usePageRefreshActivityCitiesAction();
  const pageBackActivityCitiesAction = usePageBackActivityCitiesAction();
  const rowEditDistrictsAction = useRowEditDistrictsAction();
  const tableCreateDistrictsAction = useTableCreateDistrictsAction();
  const rowDeleteDistrictsAction = useRowDeleteDistrictsAction();
  const rowViewDistrictsAction = useRowViewDistrictsAction();
  const pageEditActivityCitiesAction = usePageEditActivityCitiesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer, districtsColumns, districtsRangeFilterOptions, districtsInitialQueryCustomizer } =
    useAdminUserActivityCitiesView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCityStored>({} as unknown as AdminCityStored);
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
  const [districtsSortModel, setDistrictsSortModel] = useState<GridSortModel>([{ field: 'name', sort: 'asc' }]);

  const districtsRowActions: TableRowAction<AdminDistrictStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminDistrictStored) => rowDeleteDistrictsAction(data, row, () => fetchData()),
    },
  ];
  const title: string = data.representation as string;

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCityServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminCity>,
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
      const res = await adminCityServiceImpl.update(payloadDiff);

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
            <Button onClick={() => setEditMode(true)} disabled={isLoading}>
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
          <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
            <Grid item>
              <TextField
                name="name"
                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/User.activityCities/View/default/City_View/name"
                label={
                  t('edemokracia.admin.User.activityCities.City.View.name', { defaultValue: 'City name' }) as string
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

            <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
              <Grid container item alignItems="center" justifyContent="flex-start">
                <MdiIcon path="home-city" />
                <Typography variant="h6" component="h1">
                  {t('edemokracia.admin.User.activityCities.City.View.districts.districts.Label', {
                    defaultValue: 'Districts',
                  })}
                </Typography>
              </Grid>

              <Grid item>
                <DataGrid
                  {...baseTableConfig}
                  getRowId={(row: { __identifier: string }) => row.__identifier}
                  loading={isLoading}
                  rows={data?.districts ?? []}
                  columns={[...districtsColumns, ...columnsActionCalculator(districtsRowActions, { shownActions: 2 })]}
                  disableSelectionOnClick
                  onRowClick={(params: GridRowParams<AdminDistrictStored>) => rowViewDistrictsAction(params.row)}
                  sortModel={districtsSortModel}
                  onSortModelChange={(newModel: GridSortModel) => {
                    setDistrictsSortModel(newModel);
                  }}
                  components={{
                    Toolbar: () => (
                      <GridToolbarContainer>
                        <Button
                          onClick={() => tableCreateDistrictsAction(data, () => fetchData())}
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
        </Box>
      </Container>
    </>
  );
}
