///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::User.residentCity#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: residentCity
// Page DataElement owner name: edemokracia::admin::User

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, CardContent, Button, TextField, Typography, InputAdornment, Card } from '@mui/material';
import {
  GridRowId,
  DataGrid,
  GridToolbarContainer,
  GridRowParams,
  GridRenderCellParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridColDef,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import type { Dayjs } from 'dayjs';
import { useSnackbar } from 'notistack';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../../components';
import { useConfirmationBeforeChange } from '../../../../../hooks';
import { columnsActionCalculator } from '../../../../../components/table';
import { useRangeDialog } from '../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../components/widgets';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
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
import { useAdminUserResidentCityView } from './hooks/useAdminUserResidentCityView';
import {
  usePageEditResidentCityAction,
  usePageRefreshResidentCityAction,
  useRowViewDistrictsAction,
  useRowDeleteDistrictsAction,
  useTableCreateDistrictsAction,
  useRowEditDistrictsAction,
} from './actions';

/**
 * Name: edemokracia::admin::User.residentCity#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminUserResidentCityView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageEditResidentCityAction = usePageEditResidentCityAction();
  const pageRefreshResidentCityAction = usePageRefreshResidentCityAction();
  const rowViewDistrictsAction = useRowViewDistrictsAction();
  const rowDeleteDistrictsAction = useRowDeleteDistrictsAction();
  const tableCreateDistrictsAction = useTableCreateDistrictsAction();
  const rowEditDistrictsAction = useRowEditDistrictsAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer, districtsColumns, districtsRangeFilterOptions, districtsInitialQueryCustomizer } =
    useAdminUserResidentCityView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminCityStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminUserResidentCityView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCityStored>({} as unknown as AdminCityStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminCityStored, any>>(
    {} as unknown as Record<keyof AdminCityStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminCityStored, value: any) => void = useCallback(
    (attributeName: keyof AdminCityStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminCityStored, string>>(new Map());
  const [districtsSortModel, setDistrictsSortModel] = useState<GridSortModel>([{ field: 'name', sort: 'asc' }]);

  const districtsRowActions: TableRowAction<AdminDistrictStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminUserResidentCityViewEdemokraciaAdminAdminEdemokraciaAdminCityDistrictsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminDistrictStored) => rowDeleteDistrictsAction(data, row, () => fetchData()),
      disabled: (row: AdminDistrictStored) => editMode || !row.__deleteable,
    },
  ];
  const title: string = data.representation as string;

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminCityStored, any>);
    } catch (error) {
      handleFetchError(error);
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
      handleUpdateError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminCityStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {editMode && (
          <Grid item>
            <Button
              id="page-action-edit-cancel"
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
            <Button id="page-action-edit-save" onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
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
                id="TextInputedemokraciaAdminAdminEdemokraciaAdminUserResidentCityViewDefaultCityViewName"
                label={t('edemokracia.admin.User.residentCity.City.View.name', { defaultValue: 'City name' }) as string}
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

            <Grid item xs={12} sm={12}>
              <Grid
                id="FlexedemokraciaAdminAdminEdemokraciaAdminUserResidentCityViewDefaultCityViewDistrictsLabelWrapper"
                container
                direction="column"
                alignItems="stretch"
                justifyContent="flex-start"
                spacing={2}
              >
                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                    <MdiIcon path="home-city" />
                    <Typography
                      id="LabeledemokraciaAdminAdminEdemokraciaAdminUserResidentCityViewDefaultCityViewDistrictsLabelWrapperDistrictsLabel"
                      variant="h6"
                      component="h1"
                    >
                      {t('edemokracia.admin.User.residentCity.City.View.districts.districts.Label', {
                        defaultValue: 'Districts',
                      })}
                    </Typography>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="TableedemokraciaAdminAdminEdemokraciaAdminUserResidentCityViewDefaultCityViewDistrictsLabelWrapperDistricts"
                    container
                    direction="column"
                    alignItems="stretch"
                    justifyContent="flex-start"
                  >
                    <DataGrid
                      {...baseTableConfig}
                      getRowId={(row: { __identifier: string }) => row.__identifier}
                      loading={isLoading}
                      rows={data?.districts ?? []}
                      columns={[
                        ...districtsColumns,
                        ...columnsActionCalculator(
                          'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCityDistricts',
                          districtsRowActions,
                          { shownActions: 2 },
                        ),
                      ]}
                      disableSelectionOnClick
                      onRowClick={(params: GridRowParams<AdminDistrictStored>) => {
                        if (!editMode) {
                          rowViewDistrictsAction(params.row);
                        }
                      }}
                      sortModel={districtsSortModel}
                      onSortModelChange={(newModel: GridSortModel) => {
                        setDistrictsSortModel(newModel);
                      }}
                      components={{
                        Toolbar: () => (
                          <GridToolbarContainer>
                            <Button
                              id="CreateActionedemokraciaAdminAdminEdemokraciaAdminUserResidentCityViewEdemokraciaAdminAdminEdemokraciaAdminCityDistrictsTableCreate"
                              variant="text"
                              onClick={() => tableCreateDistrictsAction(data, () => fetchData())}
                              disabled={isLoading || !true || editMode}
                            >
                              <MdiIcon path="file_document_plus" />
                              {t('judo.pages.table.create', { defaultValue: 'Create' })}
                            </Button>
                            <div>{/* Placeholder */}</div>
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
