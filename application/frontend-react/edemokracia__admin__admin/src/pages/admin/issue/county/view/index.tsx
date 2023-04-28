//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.county#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: county
// Page DataElement owner name: edemokracia::admin::Issue

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, InputAdornment, TextField, Typography } from '@mui/material';
import { LoadingButton } from '@mui/lab';
import {
  DataGrid,
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridRowSelectionModel,
  GridSortItem,
  GridSortModel,
  GridToolbarContainer,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
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
  BinaryInput,
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
  serviceDateToUiDate,
  uiTimeToServiceTime,
  serviceTimeToUiTime,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  AdminIssue,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  AdminCityMaskBuilder,
  AdminCountyQueryCustomizer,
  AdminCounty,
  AdminCountyStored,
  AdminCityStored,
  AdminCity,
} from '../../../../../generated/data-api';
import { adminIssueServiceImpl, adminCountyServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminIssueCountyView } from './hooks/useAdminIssueCountyView';
import {
  usePageRefreshCountyAction,
  useRowEditCitiesAction,
  useRowViewCitiesAction,
  useTableCreateCitiesAction,
  useRowDeleteCitiesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Issue.county#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminIssueCountyView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshCountyAction = usePageRefreshCountyAction();
  const rowEditCitiesAction = useRowEditCitiesAction();
  const rowViewCitiesAction = useRowViewCitiesAction();
  const tableCreateCitiesAction = useTableCreateCitiesAction();
  const rowDeleteCitiesAction = useRowDeleteCitiesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const { queryCustomizer, citiesColumns, citiesRangeFilterOptions, citiesInitialQueryCustomizer } =
    useAdminIssueCountyView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCountyStored>({} as unknown as AdminCountyStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminCountyStored, any>>(
    {} as unknown as Record<keyof AdminCountyStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminCountyStored, value: any) => void = useCallback(
    (attributeName: keyof AdminCountyStored, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = [];
      const timeTypes: string[] = [];
      if (dateTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiDateToServiceDate(value);
      } else if (dateTimeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = value;
      } else if (timeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiTimeToServiceTime(value);
      } else {
        payloadDiff[attributeName] = value;
      }
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminCounty, string>>(new Map());

  const [citiesSortModel, setCitiesSortModel] = useState<GridSortModel>([{ field: 'name', sort: 'asc' }]);

  const citiesRowActions: TableRowAction<AdminCityStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminIssueCountyViewEdemokraciaAdminAdminEdemokraciaAdminCountyCitiesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminCityStored) => rowDeleteCitiesAction(data, row, () => fetchData()),
      disabled: (row: AdminCityStored) => editMode || !row.__deleteable,
    },
  ];
  const title: string = data.representation as string;

  const isFormUpdateable = useCallback(() => {
    return false && typeof data?.__updateable === 'boolean' && data?.__updateable;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false && typeof data?.__deleteable === 'boolean' && data?.__deleteable;
  }, [data]);

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminCountyStored, any>);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminCounty, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid className="page-action" item>
            <LoadingButton
              loading={isLoading}
              loadingPosition="start"
              id="page-action-refresh"
              startIcon={<MdiIcon path="refresh" />}
              onClick={() => fetchData()}
            >
              <span>{t('judo.pages.refresh', { defaultValue: 'Refresh' })}</span>
            </LoadingButton>
          </Grid>
        )}
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid
            className="relation-page-data"
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
                id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueCountyViewDefaultCountyViewName"
                label={t('edemokracia.admin.Issue.county.County.View.name', { defaultValue: 'County name' }) as string}
                value={data.name}
                className={!editMode ? 'JUDO-viewMode' : undefined}
                disabled={false || !isFormUpdateable()}
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
                id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCountyViewDefaultCountyViewCitiesLabelWrapper"
                container
                direction="column"
                alignItems="stretch"
                justifyContent="flex-start"
                spacing={2}
              >
                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                    <MdiIcon path="city" />
                    <Typography
                      id="LabeledemokraciaAdminAdminEdemokraciaAdminIssueCountyViewDefaultCountyViewCitiesLabelWrapperCitiesLabel"
                      variant="h6"
                      component="h1"
                    >
                      {t('edemokracia.admin.Issue.county.County.View.cities.cities.Label', { defaultValue: 'Cities' })}
                    </Typography>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="TableedemokraciaAdminAdminEdemokraciaAdminIssueCountyViewDefaultCountyViewCitiesLabelWrapperCities"
                    container
                    direction="column"
                    alignItems="stretch"
                    justifyContent="flex-start"
                  >
                    <DataGrid
                      {...baseTableConfig}
                      sx={{
                        // overflow: 'hidden',
                        display: 'grid',
                      }}
                      getRowId={(row: { __identifier: string }) => row.__identifier}
                      loading={isLoading}
                      rows={data?.cities ?? []}
                      getRowClassName={() => 'data-grid-row'}
                      getCellClassName={() => 'data-grid-cell'}
                      columns={[
                        ...citiesColumns,
                        ...columnsActionCalculator(
                          'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCountyCities',
                          citiesRowActions,
                          { shownActions: 2 },
                        ),
                      ]}
                      disableRowSelectionOnClick
                      onRowClick={(params: GridRowParams<AdminCityStored>) => {
                        if (!editMode) {
                          rowViewCitiesAction(data, params.row);
                        }
                      }}
                      sortModel={citiesSortModel}
                      onSortModelChange={(newModel: GridSortModel) => {
                        setCitiesSortModel(newModel);
                      }}
                      components={{
                        Toolbar: () => (
                          <GridToolbarContainer>
                            <Button
                              id="CreateActionedemokraciaAdminAdminEdemokraciaAdminIssueCountyViewEdemokraciaAdminAdminEdemokraciaAdminCountyCitiesTableCreate"
                              variant="text"
                              onClick={() => tableCreateCitiesAction(data, () => fetchData())}
                              disabled={false || editMode || !isFormUpdateable()}
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
