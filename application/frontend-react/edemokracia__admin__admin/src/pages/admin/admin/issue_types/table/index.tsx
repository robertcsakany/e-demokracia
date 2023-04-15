//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.issueTypes#Table
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: issueTypes
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { useSnackbar } from 'notistack';
import { Paper, Card, CardContent, Box, Grid, Button, Container } from '@mui/material';
import type { GridRowModel, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { DataGrid, GridToolbarContainer } from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type { Filter } from '../../../../../components-api';
import {
  MdiIcon,
  PageHeader,
  CustomBreadcrumb,
  CustomTablePagination,
  useJudoNavigation,
} from '../../../../../components';
import { columnsActionCalculator } from '../../../../../components/table';
import { useFilterDialog } from '../../../../../components/dialog';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  mapAllFiltersToQueryCustomizerProperties,
  processQueryCustomizer,
} from '../../../../../utilities';
import type { PersistedTableData, TableRowAction } from '../../../../../utilities';
import { pageServerTableConfig, toastConfig } from '../../../../../config';
import { useAdminAdminIssueTypesTable } from './hooks/useAdminAdminIssueTypesTable';
import { AdminIssueType, AdminIssueTypeQueryCustomizer, AdminIssueTypeStored } from '../../../../../generated/data-api';
import { adminAdminServiceForIssueTypesImpl } from '../../../../../generated/data-axios';
import { mainContainerPadding } from '../../../../../theme';
import {
  useRowDeleteIssueTypesAction,
  usePageCreateIssueTypesAction,
  useRowEditIssueTypesAction,
  usePageFilterIssueTypesAction,
  usePageRefreshIssueTypesAction,
  useRowViewIssueTypesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.issueTypes#Table
 * Is Access: true
 * Is Dashboard: false
 * Type: Table
 **/
export default function AdminAdminIssueTypesTable() {
  const persistedTableData: PersistedTableData = JSON.parse(
    window.sessionStorage.getItem('pages.AdminAdminIssueTypesTable') || '{}',
  );
  const { t } = useTranslation();
  const { navigate } = useJudoNavigation();
  const { openFilterDialog } = useFilterDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { columns, filterOptions } = useAdminAdminIssueTypesTable();
  const rowDeleteIssueTypesAction = useRowDeleteIssueTypesAction();
  const pageCreateIssueTypesAction = usePageCreateIssueTypesAction();
  const rowEditIssueTypesAction = useRowEditIssueTypesAction();
  const pageRefreshIssueTypesAction = usePageRefreshIssueTypesAction();
  const rowViewIssueTypesAction = useRowViewIssueTypesAction();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [rowCount, setRowCount] = useState<number>(0);
  const [sortModel, setSortModel] = useState<GridSortModel>(
    persistedTableData.sortModel || [{ field: 'title', sort: 'asc' }],
  );
  const [lastItem, setLastItem] = useState<AdminIssueTypeStored>();
  const [firstItem, setFirstItem] = useState<AdminIssueTypeStored>();
  const [isNextButtonEnabled, setIsNextButtonEnabled] = useState<boolean>(true);
  const [page, setPage] = useState<number>(0);
  const [data, setData] = useState<GridRowModel<AdminIssueTypeStored>[]>([]);
  const [filters, setFilters] = useState<Filter[]>(persistedTableData.filters || []);
  const [queryCustomizer, setQueryCustomizer] = useState<AdminIssueTypeQueryCustomizer>({
    _mask: '{title,description}',
    _seek: {
      limit: 10 + 1,
    },
    _orderBy: [
      {
        attribute: sortModel[0].field,
        descending: sortModel[0].sort === 'desc',
      },
    ],
    ...mapAllFiltersToQueryCustomizerProperties(filters, 'title', 'description'),
  });
  const title: string = t('edemokracia.admin.Admin.issueTypes.Table', { defaultValue: 'Issue Types' });

  const handleSortModelChange = (newModel: GridSortModel) => {
    setPage(0);
    setSortModel(newModel);

    const { field, sort } = newModel[0];

    setQueryCustomizer((prevQueryCustomizer) => {
      return {
        ...prevQueryCustomizer,
        _orderBy: [{ attribute: field, descending: sort === 'desc' }],
      };
    });
  };

  const handlePageChange = async (isNext: boolean) => {
    setQueryCustomizer((prevQueryCustomizer) => {
      return {
        ...prevQueryCustomizer,
        _seek: {
          limit: isNext ? 10 + 1 : 10,
          reverse: !isNext,
          lastItem: isNext ? lastItem : firstItem,
        },
      };
    });

    setIsNextButtonEnabled(!isNext);
  };

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminAdminServiceForIssueTypesImpl.listIssueTypes(processQueryCustomizer(queryCustomizer));

      if (res.length > 10) {
        setIsNextButtonEnabled(true);
        res.pop();
      } else if (queryCustomizer._seek?.limit === 10 + 1) {
        setIsNextButtonEnabled(false);
      }

      setData(res);
      setFirstItem(res[0]);
      setLastItem(res[res.length - 1]);
      setRowCount(res.length || 0);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, [queryCustomizer]);

  useEffect(() => {
    window.sessionStorage.setItem(
      'pages.AdminAdminIssueTypesTable',
      JSON.stringify({
        sortModel,
        filters,
      }),
    );
  }, [sortModel, filters]);

  const pageFilterIssueTypesAction = usePageFilterIssueTypesAction(
    setFilters,
    setPage,
    setQueryCustomizer,
    openFilterDialog,
  );

  const rowActions: TableRowAction<AdminIssueTypeStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueTypeStored) => rowDeleteIssueTypesAction(row, () => fetchData()),
      disabled: (row: AdminIssueTypeStored) => !row.__deleteable,
    },
  ];

  return (
    <>
      <PageHeader title={title}>
        <Grid item>
          <Button
            id="page-action-create"
            onClick={() =>
              pageCreateIssueTypesAction((result: AdminIssueTypeStored) =>
                navigate(`admin/admin/issue_types/view/${result.__signedIdentifier}`),
              )
            }
            disabled={isLoading}
          >
            <MdiIcon path="file_document_plus" />
            {t('judo.pages.table.create', { defaultValue: 'Create' })}
          </Button>
        </Grid>
        <Grid item>
          <Button
            id="page-action-refresh"
            onClick={() => pageRefreshIssueTypesAction(() => fetchData())}
            disabled={isLoading}
          >
            <MdiIcon path="refresh" />
            {t('judo.pages.table.refresh', { defaultValue: 'Refresh' })}
          </Button>
        </Grid>
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid container spacing={2}>
            <Grid item xs={12}>
              <Card>
                <CardContent id="PageDefinitionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTable-data-grid">
                  <DataGrid
                    {...pageServerTableConfig}
                    getRowId={(row: { __identifier: string }) => row.__identifier}
                    loading={isLoading}
                    rows={data}
                    rowCount={rowCount}
                    sortModel={sortModel}
                    onSortModelChange={handleSortModelChange}
                    columns={[
                      ...columns,
                      ...columnsActionCalculator(
                        'RelationTypeedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypes',
                        rowActions,
                        { shownActions: 2 },
                      ),
                    ]}
                    onRowClick={(params: GridRowParams<AdminIssueTypeStored>) => rowViewIssueTypesAction(params.row)}
                    components={{
                      Toolbar: () => (
                        <GridToolbarContainer>
                          <Button
                            id="FilterActionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesPageFilter"
                            variant="outlined"
                            onClick={async () =>
                              pageFilterIssueTypesAction(
                                'FilterActionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesPageFilter-filter',
                                filterOptions,
                                filters,
                              )
                            }
                            disabled={isLoading}
                          >
                            {t('judo.pages.table.set-filters', { defaultValue: 'Set filters' }) +
                              (filters.length !== 0 ? ' (' + filters.length + ')' : '')}
                          </Button>
                        </GridToolbarContainer>
                      ),
                      Pagination: () => (
                        <CustomTablePagination
                          pageChange={handlePageChange}
                          isNextButtonEnabled={isNextButtonEnabled}
                          page={page}
                          setPage={setPage}
                          rowPerPage={10}
                        />
                      ),
                    }}
                  />
                </CardContent>
              </Card>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
