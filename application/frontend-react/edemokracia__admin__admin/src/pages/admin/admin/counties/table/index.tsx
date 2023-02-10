///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.counties#Table
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: counties
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { Paper, Box, Grid, Button, Container } from '@mui/material';
import type { GridRowModel, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { DataGrid, GridToolbarContainer } from '@mui/x-data-grid';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type { Filter } from '../../../../../components-api';
import {
  MdiIcon,
  PageHeader,
  CustomBreadcrumb,
  CustomTablePagination,
  useJudoNavigation,
  useFilterDialog,
  columnsActionCalculator,
  useSnackbar,
} from '../../../../../components';
import {
  errorHandling,
  fileHandling,
  mapAllFiltersToQueryCustomizerProperties,
  processQueryCustomizer,
} from '../../../../../utilities';
import type { PersistedTableData, TableRowAction } from '../../../../../utilities';
import { pageServerTableConfig, toastConfig } from '../../../../../config';
import { useAdminAdminCountiesTable } from './hooks/useAdminAdminCountiesTable';
import { AdminCountyQueryCustomizer, AdminCounty, AdminCountyStored } from '../../../../../generated/data-api';
import { adminAdminServiceForCountiesImpl } from '../../../../../generated/data-axios';
import { mainContainerPadding } from '../../../../../theme';
import {
  usePageCreateCountiesAction,
  usePageRefreshCountiesAction,
  useRowViewCountiesAction,
  usePageFilterCountiesAction,
  useRowEditCountiesAction,
  useRowDeleteCountiesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.counties#Table
 * Is Access: true
 * Is Dashboard: false
 * Type: Table
 **/
export default function AdminAdminCountiesTable() {
  const persistedTableData: PersistedTableData = JSON.parse(
    window.sessionStorage.getItem('pages.AdminAdminCountiesTable') || '{}',
  );
  const { t } = useTranslation();
  const { navigate } = useJudoNavigation();
  const { openFilterDialog } = useFilterDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { columns, filterOptions } = useAdminAdminCountiesTable();
  const pageCreateCountiesAction = usePageCreateCountiesAction();
  const pageRefreshCountiesAction = usePageRefreshCountiesAction();
  const rowViewCountiesAction = useRowViewCountiesAction();
  const rowEditCountiesAction = useRowEditCountiesAction();
  const rowDeleteCountiesAction = useRowDeleteCountiesAction();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [rowCount, setRowCount] = useState<number>(0);
  const [sortModel, setSortModel] = useState<GridSortModel>(
    persistedTableData.sortModel || [{ field: 'name', sort: 'asc' }],
  );
  const [lastItem, setLastItem] = useState<AdminCountyStored>();
  const [firstItem, setFirstItem] = useState<AdminCountyStored>();
  const [isNextButtonEnabled, setIsNextButtonEnabled] = useState<boolean>(true);
  const [page, setPage] = useState<number>(0);
  const [data, setData] = useState<GridRowModel<AdminCountyStored>[]>([]);
  const [filters, setFilters] = useState<Filter[]>(persistedTableData.filters || []);
  const [queryCustomizer, setQueryCustomizer] = useState<AdminCountyQueryCustomizer>({
    _mask: '{name}',
    _seek: {
      limit: 10 + 1,
    },
    _orderBy: [
      {
        attribute: sortModel[0].field,
        descending: sortModel[0].sort === 'desc',
      },
    ],
    ...mapAllFiltersToQueryCustomizerProperties(filters, 'name'),
  });
  const title: string = t('edemokracia.admin.Admin.counties.Table', { defaultValue: 'Counties' });

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
      const res = await adminAdminServiceForCountiesImpl.listCounties(processQueryCustomizer(queryCustomizer));

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
      errorHandling(error, enqueueSnackbar);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, [queryCustomizer]);

  useEffect(() => {
    window.sessionStorage.setItem(
      'pages.AdminAdminCountiesTable',
      JSON.stringify({
        sortModel,
        filters,
      }),
    );
  }, [sortModel, filters]);

  const pageFilterCountiesAction = usePageFilterCountiesAction(
    setFilters,
    setPage,
    setQueryCustomizer,
    openFilterDialog,
  );

  const rowActions: TableRowAction<AdminCountyStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminCountyStored) => rowDeleteCountiesAction(row, () => fetchData()),
    },
  ];

  return (
    <>
      <PageHeader title={title}>
        <Grid item>
          <Button
            onClick={() =>
              pageCreateCountiesAction((result: AdminCountyStored) =>
                navigate(`admin/admin/counties/view/${result.__signedIdentifier}`),
              )
            }
            disabled={isLoading}
          >
            <MdiIcon path="file_document_plus" />
            {t('judo.pages.table.create', { defaultValue: 'Create' })}
          </Button>
        </Grid>
        <Grid item>
          <Button onClick={() => pageRefreshCountiesAction(() => fetchData())} disabled={isLoading}>
            <MdiIcon path="refresh" />
            {t('judo.pages.table.refresh', { defaultValue: 'Refresh' })}
          </Button>
        </Grid>
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid container spacing={2}>
            <Grid item xs={12}>
              <Paper variant="elevation">
                <DataGrid
                  {...pageServerTableConfig}
                  getRowId={(row: { __identifier: string }) => row.__identifier}
                  loading={isLoading}
                  rows={data}
                  rowCount={rowCount}
                  sortModel={sortModel}
                  onSortModelChange={handleSortModelChange}
                  columns={[...columns, ...columnsActionCalculator(rowActions, { shownActions: 2 })]}
                  onRowClick={(params: GridRowParams<AdminCountyStored>) => rowViewCountiesAction(params.row)}
                  components={{
                    Toolbar: () => (
                      <GridToolbarContainer>
                        <Button
                          variant="outlined"
                          onClick={async () => pageFilterCountiesAction(filterOptions, filters)}
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
              </Paper>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
