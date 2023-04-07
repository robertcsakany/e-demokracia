///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::IssueCategory::subcategories#TableCreate
// Action: CreateAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  DialogContent,
  DialogTitle,
  CardContent,
  IconButton,
  Button,
  DialogContentText,
  TextField,
  DialogActions,
  Card,
  Typography,
  InputAdornment,
} from '@mui/material';
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
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import { useSnackbar } from 'notistack';
import { v1 as uuidv1 } from 'uuid';
import { MdiIcon, ModeledTabs } from '../../../../../../../components';
import { columnsActionCalculator } from '../../../../../../../components/table';
import { useRangeDialog } from '../../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../../components/widgets';
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
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';

export interface TableCreateSubcategoriesFormProps {
  successCallback: (result: AdminIssueCategoryStored) => void;
  cancel: () => void;
  owner: JudoIdentifiable<AdminIssueCategory>;
}

export function TableCreateSubcategoriesForm({ successCallback, cancel, owner }: TableCreateSubcategoriesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleCreateError = useErrorHandler<AdminIssueCategory>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Create)(component=TableCreateSubcategoriesForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueCategory>({
    __referenceId: uuidv1(),
  } as unknown as AdminIssueCategory);
  const [validation, setValidation] = useState<Map<keyof AdminIssueCategory, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof AdminIssueCategory, any>>(
    {} as unknown as Record<keyof AdminIssueCategory, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueCategory, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueCategory, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.IssueCategory.subcategories.Create', { defaultValue: 'Create Category' });

  const [subcategoriesSortModel, setSubcategoriesSortModel] = useState<GridSortModel>([
    { field: 'title', sort: 'asc' },
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
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategorySubcategoriesLabelWrapperSubcategoriesTitleFilter',
      attributeName: 'title',
      label: t(
        'edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategorySubcategoriesLabelWrapperSubcategoriesDescriptionFilter',
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
  const subcategoriesRangeCall = async () =>
    openRangeDialog<AdminIssueCategoryStored, AdminIssueCategoryQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategories',
      columns: subcategoriesColumns,
      defaultSortField: subcategoriesSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminIssueCategoryServiceImpl.getRangeForSubcategories(
          undefined,
          processQueryCustomizer(queryCustomizer),
        ),
      single: false,
      alreadySelectedItems: subcategoriesSelectionModel,
      filterOptions: subcategoriesRangeFilterOptions,
      initialQueryCustomizer: subcategoriesInitialQueryCustomizer,
    });
  const [subcategoriesSelectionModel, setSubcategoriesSelectionModel] = useState<GridSelectionModel>([]);
  const [ownerSortModel, setOwnerSortModel] = useState<GridSortModel>([{ field: 'representation', sort: 'asc' }]);

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
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategoryOwnerRepresentationFilter',
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
  const ownerRangeCall = async () =>
    openRangeDialog<AdminUserStored, AdminUserQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategoryOwner',
      columns: ownerColumns,
      defaultSortField: ownerSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminIssueCategoryServiceImpl.getRangeForOwner(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: ownerSelectionModel,
      filterOptions: ownerRangeFilterOptions,
      initialQueryCustomizer: ownerInitialQueryCustomizer,
    });
  const [ownerSelectionModel, setOwnerSelectionModel] = useState<GridSelectionModel>([]);
  const subcategoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [];
  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueCategoryServiceImpl.getTemplate();
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
      const res = await adminIssueCategoryServiceForSubcategoriesImpl.createSubcategories(owner, data);

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
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminCategoriesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesTableCreate-dialog-close"
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
              name="title"
              id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategoryTitle"
              label={
                t('edemokracia.admin.IssueCategory.subcategories.Create.Category.title', {
                  defaultValue: 'Title',
                }) as string
              }
              value={data.title}
              className={!editMode ? 'JUDO-viewMode' : undefined}
              disabled={false}
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
              id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategoryDescription"
              label={
                t('edemokracia.admin.IssueCategory.subcategories.Create.Category.description', {
                  defaultValue: 'Description',
                }) as string
              }
              value={data.description}
              className={!editMode ? 'JUDO-viewMode' : undefined}
              disabled={false}
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
              id="LinkedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategoryOwner"
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
              disabled={false}
              editMode={editMode}
              onSet={async () => {
                const res = await openRangeDialog<AdminUserStored, AdminUserQueryCustomizer>({
                  id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategoryOwner',
                  columns: ownerColumns,
                  defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                  rangeCall: async (queryCustomizer) =>
                    await adminIssueCategoryServiceImpl.getRangeForOwner(data, processQueryCustomizer(queryCustomizer)),
                  single: true,
                  alreadySelectedItems: data.owner?.__identifier as GridRowId,
                  filterOptions: ownerRangeFilterOptions,
                  initialQueryCustomizer: ownerInitialQueryCustomizer,
                });

                if (res === undefined) return;

                setEditMode(true);
                storeDiff('owner', res as AdminUserStored);
              }}
              onUnset={async () => {
                setEditMode(true);
                storeDiff('owner', null);
              }}
            />
          </Grid>

          <Grid item xs={12} sm={12}>
            <Grid
              id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategorySubcategoriesLabelWrapper"
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
                    id="LabeledemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategorySubcategoriesLabelWrapperSubcategoriesLabel"
                    variant="h6"
                    component="h1"
                  >
                    {t(
                      'edemokracia.admin.IssueCategory.subcategories.Create.Category.subcategories.subcategories.Label',
                      { defaultValue: 'Subcategories' },
                    )}
                  </Typography>
                </Grid>
              </Grid>

              <Grid item xs={12} sm={12}>
                <Grid
                  id="TableedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesCreateDefaultCreateCategorySubcategoriesLabelWrapperSubcategories"
                  container
                  direction="column"
                  alignItems="stretch"
                  justifyContent="flex-start"
                >
                  <DataGrid
                    {...baseTableConfig}
                    getRowId={(row: { __identifier: string }) => row.__identifier}
                    loading={isLoading}
                    rows={data?.subcategories ?? []}
                    columns={[
                      ...subcategoriesColumns,
                      ...columnsActionCalculator(
                        'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategories',
                        subcategoriesRowActions,
                        { shownActions: 2 },
                      ),
                    ]}
                    disableSelectionOnClick
                    sortModel={subcategoriesSortModel}
                    onSortModelChange={(newModel: GridSortModel) => {
                      setSubcategoriesSortModel(newModel);
                    }}
                    components={{
                      Toolbar: () => (
                        <GridToolbarContainer>
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
      </DialogContent>
      <DialogActions>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminCategoriesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesTableCreate-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminCategoriesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCategorySubcategoriesTableCreate-action-form-action-create"
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
