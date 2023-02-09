///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.categories#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: categories
// Page DataElement owner name: edemokracia::admin::Issue

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
  usePageBackCategoriesAction,
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
  const pageBackCategoriesAction = usePageBackCategoriesAction();
  const rowDeleteSubcategoriesAction = useRowDeleteSubcategoriesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const {
    queryCustomizer,
    subcategoriesColumns,
    subcategoriesRangeFilterOptions,
    subcategoriesInitialQueryCustomizer,
    ownerColumns,
    ownerRangeFilterOptions,
    ownerInitialQueryCustomizer,
  } = useAdminIssueCategoriesView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueCategoryStored>({} as unknown as AdminIssueCategoryStored);
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
  const [subcategoriesSortModel, setSubcategoriesSortModel] = useState<GridSortModel>([
    { field: 'title', sort: 'asc' },
  ]);
  const [ownerSortModel, setOwnerSortModel] = useState<GridSortModel>([{ field: 'representation', sort: 'asc' }]);

  const subcategoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueCategoryStored) => rowDeleteSubcategoriesAction(data, row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.Issue.categories.Category', { defaultValue: 'View / Edit Category' });

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
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
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
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
            <Grid item>
              <TextField
                name="title"
                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Issue.categories/View/default/Category/title"
                label={t('edemokracia.admin.Issue.categories.Category.title', { defaultValue: 'Title' }) as string}
                value={data.title}
                error={!!validation.get('title')}
                helperText={validation.get('title')}
                onChange={(event) => storeDiff('title', event.target.value)}
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

            <Grid item>
              <TextField
                name="description"
                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Issue.categories/View/default/Category/description"
                label={
                  t('edemokracia.admin.Issue.categories.Category.description', {
                    defaultValue: 'Description',
                  }) as string
                }
                value={data.description}
                error={!!validation.get('description')}
                helperText={validation.get('description')}
                onChange={(event) => storeDiff('description', event.target.value)}
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

            <Grid item>
              <AggregationInput
                name="owner"
                id="Link@edemokracia/admin/Admin/edemokracia/admin/Issue.categories/View/default/Category/owner"
                label={t('edemokracia.admin.Issue.categories.Category.owner', { defaultValue: 'Owner' }) as string}
                labelList={[data.owner?.representation?.toString() ?? '']}
                value={data.owner}
                error={!!validation.get('owner')}
                helperText={validation.get('owner')}
                icon={<MdiIcon path="account" />}
                readonly={false || !editMode}
                onView={async () => linkViewOwnerAction(data?.owner!)}
              />
            </Grid>

            <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
              <Grid container item alignItems="center" justifyContent="flex-start">
                <MdiIcon path="file-tree" />
                <Typography variant="h6" component="h1">
                  {t('edemokracia.admin.Issue.categories.Category.subcategories.subcategories.Label', {
                    defaultValue: 'Subcategories',
                  })}
                </Typography>
              </Grid>

              <Grid item>
                <DataGrid
                  {...baseTableConfig}
                  getRowId={(row: { __identifier: string }) => row.__identifier}
                  loading={isLoading}
                  rows={data?.subcategories ?? []}
                  columns={[
                    ...subcategoriesColumns,
                    ...columnsActionCalculator(subcategoriesRowActions, { shownActions: 2 }),
                  ]}
                  disableSelectionOnClick
                  onRowClick={(params: GridRowParams<AdminIssueCategoryStored>) =>
                    rowViewSubcategoriesAction(params.row)
                  }
                  sortModel={subcategoriesSortModel}
                  onSortModelChange={(newModel: GridSortModel) => {
                    setSubcategoriesSortModel(newModel);
                  }}
                  components={{
                    Toolbar: () => (
                      <GridToolbarContainer>
                        <Button
                          onClick={() => tableCreateSubcategoriesAction(data, () => fetchData())}
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
