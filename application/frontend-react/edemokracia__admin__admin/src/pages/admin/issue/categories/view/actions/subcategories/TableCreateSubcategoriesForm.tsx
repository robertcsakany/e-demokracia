///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::IssueCategory::subcategories#TableCreate
// Owner Page name: edemokracia::admin::Issue.categories#View
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
  Divider,
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSortItem,
  GridToolbarContainer,
  GridRenderCellParams,
  GridRowParams,
  GridColDef,
} from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import {
  MdiIcon,
  ModeledTabs,
  TrinaryLogicCombobox,
  AggregationInput,
  useSnackbar,
  useRangeDialog,
  columnsActionCalculator,
} from '../../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import {
  AdminIssueCategoryStored,
  AdminIssueCategoryMaskBuilder,
  AdminIssueCategory,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
  AdminUserMaskBuilder,
} from '../../../../../../../generated/data-api';
import {
  adminIssueCategoryServiceForSubcategoriesImpl,
  adminIssueCategoryServiceImpl,
} from '../../../../../../../generated/data-axios';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../../config';

export interface TableCreateSubcategoriesFormProps {
  successCallback: (result: AdminIssueCategoryStored) => void;
  cancel: () => void;
  owner: AdminIssueCategoryStored;
}

export function TableCreateSubcategoriesForm({ successCallback, cancel, owner }: TableCreateSubcategoriesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueCategory>({} as unknown as AdminIssueCategory);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.IssueCategory.subcategories.Create', { defaultValue: 'Create Category' });

  const [subcategoriesSortModel, setSubcategoriesSortModel] = useState<GridSortModel>([
    {
      field: 'title',
      sort: 'asc',
    },
  ]);

  const subcategoriesColumns: GridColDef<AdminIssueCategoryStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t(
        'edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.description',
        { defaultValue: 'Description' },
      ) as string,
      width: 230,
      type: 'string',
    },
  ];

  const subcategoriesRangeFilterOptions: FilterOption[] = [
    {
      attributeName: 'title',
      label: t(
        'edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      attributeName: 'description',
      label: t(
        'edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.description.Filter',
        { defaultValue: 'Description' },
      ) as string,
      filterType: FilterType.string,
    },
  ];

  const subcategoriesInitialQueryCustomizer: AdminIssueCategoryQueryCustomizer = {
    _mask: '{title,description}',
    _orderBy: subcategoriesSortModel.length
      ? [
          {
            attribute: subcategoriesSortModel[0].field,
            descending: subcategoriesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const [ownerSortModel, setOwnerSortModel] = useState<GridSortModel>([
    {
      field: 'representation',
      sort: 'asc',
    },
  ]);

  const ownerColumns: GridColDef<AdminUserStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.IssueCategory.subcategories.Create.Category.owner.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const ownerRangeFilterOptions: FilterOption[] = [
    {
      attributeName: 'representation',
      label: t('edemokracia.admin.IssueCategory.subcategories.Create.Category.owner.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const ownerInitialQueryCustomizer: AdminUserQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: ownerSortModel.length
      ? [
          {
            attribute: ownerSortModel[0].field,
            descending: ownerSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const subcategoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [];
  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueCategoryServiceImpl.getTemplate();
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
      const res = await adminIssueCategoryServiceForSubcategoriesImpl.createSubcategories(owner, data);

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
              name="title"
              id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.subcategories/Create/default/Create_Category/title"
              label={
                t('edemokracia.admin.IssueCategory.subcategories.Create.Category.title', {
                  defaultValue: 'Title',
                }) as string
              }
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
              id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.subcategories/Create/default/Create_Category/description"
              label={
                t('edemokracia.admin.IssueCategory.subcategories.Create.Category.description', {
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
              id="Link@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.subcategories/Create/default/Create_Category/owner"
              label={
                t('edemokracia.admin.IssueCategory.subcategories.Create.Category.owner', {
                  defaultValue: 'Owner',
                }) as string
              }
              labelList={[data.owner?.representation?.toString() ?? '']}
              value={data.owner}
              error={!!validation.get('owner')}
              helperText={validation.get('owner')}
              icon={<MdiIcon path="account" />}
              readonly={false || !editMode}
              onSet={async () => {
                const res = await openRangeDialog<AdminUserStored, AdminUserQueryCustomizer>({
                  columns: ownerColumns,
                  defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                  rangeCall: async (queryCustomizer) =>
                    await adminIssueCategoryServiceImpl.getRangeForOwner(
                      undefined,
                      processQueryCustomizer(queryCustomizer),
                    ),
                  single: true,
                  alreadySelectedItems: data.owner?.__identifier as GridRowId,
                  filterOptions: ownerRangeFilterOptions,
                  initialQueryCustomizer: ownerInitialQueryCustomizer,
                });

                if (res === undefined) return;

                storeDiff('owner', res as AdminUserStored);
              }}
              onUnset={async () => alert('UnsetAction on Link Component not implemented yet')}
            />
          </Grid>

          <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
            <Grid container item alignItems="center" justifyContent="flex-start">
              <MdiIcon path="file-tree" />
              <Typography variant="h6" component="h1">
                {t('edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.Label', {
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
                sortModel={subcategoriesSortModel}
                onSortModelChange={(newModel: GridSortModel) => {
                  setSubcategoriesSortModel(newModel);
                }}
                components={{
                  Toolbar: () => <div>{/* No actions defined */}</div>,
                }}
              />
            </Grid>
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
