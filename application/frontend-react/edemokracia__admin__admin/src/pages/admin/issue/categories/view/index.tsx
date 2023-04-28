//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.categories#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: categories
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
  AdminIssueCategoryStored,
  AdminIssue,
  AdminIssueStored,
  AdminIssueCategoryMaskBuilder,
  AdminIssueCategory,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
  AdminUserMaskBuilder,
} from '../../../../../generated/data-api';
import { adminIssueServiceImpl, adminIssueCategoryServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminIssueCategoriesView } from './hooks/useAdminIssueCategoriesView';
import {
  usePageRefreshCategoriesAction,
  useTableCreateSubcategoriesAction,
  useLinkViewOwnerAction,
  useRowEditSubcategoriesAction,
  useRowViewSubcategoriesAction,
  useRowDeleteSubcategoriesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Issue.categories#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminIssueCategoriesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshCategoriesAction = usePageRefreshCategoriesAction();
  const tableCreateSubcategoriesAction = useTableCreateSubcategoriesAction();
  const linkViewOwnerAction = useLinkViewOwnerAction();
  const rowEditSubcategoriesAction = useRowEditSubcategoriesAction();
  const rowViewSubcategoriesAction = useRowViewSubcategoriesAction();
  const rowDeleteSubcategoriesAction = useRowDeleteSubcategoriesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const {
    queryCustomizer,
    subcategoriesColumns,
    subcategoriesRangeFilterOptions,
    subcategoriesInitialQueryCustomizer,
    ownerColumns,
    ownerRangeFilterOptions,
    ownerInitialQueryCustomizer,
  } = useAdminIssueCategoriesView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueCategoryStored>({} as unknown as AdminIssueCategoryStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueCategoryStored, any>>(
    {} as unknown as Record<keyof AdminIssueCategoryStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueCategoryStored, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueCategoryStored, value: any) => {
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
  const [validation, setValidation] = useState<Map<keyof AdminIssueCategory, string>>(new Map());

  const [subcategoriesSortModel, setSubcategoriesSortModel] = useState<GridSortModel>([
    { field: 'title', sort: 'asc' },
  ]);

  const subcategoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueCategoryStored) => rowDeleteSubcategoriesAction(data, row, () => fetchData()),
      disabled: (row: AdminIssueCategoryStored) => editMode || !row.__deleteable,
    },
  ];
  const title: string = t('edemokracia.admin.Issue.categories.View', { defaultValue: 'View / Edit Category' });

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
      const res = await adminIssueCategoryServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminIssueCategory>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof AdminIssueCategoryStored, any>);
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
    setValidation(new Map<keyof AdminIssueCategory, string>());
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
                name="title"
                id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewTitle"
                label={t('edemokracia.admin.Issue.categories.Category.View.title', { defaultValue: 'Title' }) as string}
                value={data.title}
                className={!editMode ? 'JUDO-viewMode' : undefined}
                disabled={false || !isFormUpdateable()}
                error={!!validation.get('title')}
                helperText={validation.get('title')}
                onChange={(event) => {
                  setEditMode(true);
                  storeDiff('title', event.target.value);
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
              <TextField
                required
                name="description"
                id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewDescription"
                label={
                  t('edemokracia.admin.Issue.categories.Category.View.description', {
                    defaultValue: 'Description',
                  }) as string
                }
                value={data.description}
                className={!editMode ? 'JUDO-viewMode' : undefined}
                disabled={false || !isFormUpdateable()}
                error={!!validation.get('description')}
                helperText={validation.get('description')}
                onChange={(event) => {
                  setEditMode(true);
                  storeDiff('description', event.target.value);
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
              <AggregationInput
                name="owner"
                id="LinkedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewOwner"
                label={t('edemokracia.admin.Issue.categories.Category.View.owner', { defaultValue: 'Owner' }) as string}
                labelList={[data.owner?.representation?.toString() ?? '']}
                value={data.owner}
                error={!!validation.get('owner')}
                helperText={validation.get('owner')}
                icon={<MdiIcon path="account" />}
                disabled={false || !isFormUpdateable()}
                editMode={editMode}
                onView={async () => linkViewOwnerAction(data, data?.owner!)}
              />
            </Grid>

            <Grid item xs={12} sm={12}>
              <Grid
                id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewSubcategoriesLabelWrapper"
                container
                direction="column"
                alignItems="stretch"
                justifyContent="flex-start"
                spacing={2}
              >
                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                    <MdiIcon path="file-tree" />
                    <Typography
                      id="LabeledemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewSubcategoriesLabelWrapperSubcategoriesLabel"
                      variant="h6"
                      component="h1"
                    >
                      {t('edemokracia.admin.Issue.categories.Category.View.subcategories.subcategories.Label', {
                        defaultValue: 'Subcategories',
                      })}
                    </Typography>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="TableedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewSubcategoriesLabelWrapperSubcategories"
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
                      rows={data?.subcategories ?? []}
                      getRowClassName={() => 'data-grid-row'}
                      getCellClassName={() => 'data-grid-cell'}
                      columns={[
                        ...subcategoriesColumns,
                        ...columnsActionCalculator(
                          'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategories',
                          subcategoriesRowActions,
                          { shownActions: 2 },
                        ),
                      ]}
                      disableRowSelectionOnClick
                      onRowClick={(params: GridRowParams<AdminIssueCategoryStored>) => {
                        if (!editMode) {
                          rowViewSubcategoriesAction(data, params.row);
                        }
                      }}
                      sortModel={subcategoriesSortModel}
                      onSortModelChange={(newModel: GridSortModel) => {
                        setSubcategoriesSortModel(newModel);
                      }}
                      components={{
                        Toolbar: () => (
                          <GridToolbarContainer>
                            <Button
                              id="CreateActionedemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesTableCreate"
                              variant="text"
                              onClick={() => tableCreateSubcategoriesAction(data, () => fetchData())}
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
