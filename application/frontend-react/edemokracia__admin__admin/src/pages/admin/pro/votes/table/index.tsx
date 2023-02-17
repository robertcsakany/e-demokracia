///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Pro.votes#Table
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: votes
// Page DataElement owner name: edemokracia::admin::Pro

import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { Paper, Card, CardContent, Box, Grid, Button, Container } from '@mui/material';
import type { GridRowModel, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { DataGrid, GridToolbarContainer } from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
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
import type { Filter } from '../../../../../components-api';
import type { PersistedTableData, TableRowAction } from '../../../../../utilities';
import { pageServerTableConfig, toastConfig } from '../../../../../config';
import {
  errorHandling,
  fileHandling,
  mapAllFiltersToQueryCustomizerProperties,
  processQueryCustomizer,
} from '../../../../../utilities';
import { useAdminProVotesTable } from './hooks/useAdminProVotesTable';
import {
  AdminProStored,
  AdminPro,
  AdminSimpleVote,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminProServiceForVotesImpl } from '../../../../../generated/data-axios';
import { mainContainerPadding } from '../../../../../theme';
import {
  useRowDeleteVotesAction,
  usePageCreateVotesAction,
  usePageFilterVotesAction,
  useRowViewVotesAction,
  useRowEditVotesAction,
  usePageRefreshVotesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Pro.votes#Table
 * Is Access: false
 * Type: Table
 **/
export default function AdminProVotesTable() {
  const persistedTableData: PersistedTableData = JSON.parse(
    window.sessionStorage.getItem('pages.AdminProVotesTable') || '{}',
  );
  const { t } = useTranslation();
  const { signedIdentifier } = useParams();
  const { navigate } = useJudoNavigation();
  const { openFilterDialog } = useFilterDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { columns, filterOptions } = useAdminProVotesTable();
  const rowDeleteVotesAction = useRowDeleteVotesAction();
  const pageCreateVotesAction = usePageCreateVotesAction();
  const rowViewVotesAction = useRowViewVotesAction();
  const rowEditVotesAction = useRowEditVotesAction();
  const pageRefreshVotesAction = usePageRefreshVotesAction();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [rowCount, setRowCount] = useState<number>(0);
  const [sortModel, setSortModel] = useState<GridSortModel>(
    persistedTableData.sortModel || [{ field: 'created', sort: 'asc' }],
  );
  const [lastItem, setLastItem] = useState<AdminSimpleVoteStored>();
  const [firstItem, setFirstItem] = useState<AdminSimpleVoteStored>();
  const [isNextButtonEnabled, setIsNextButtonEnabled] = useState<boolean>(true);
  const [page, setPage] = useState<number>(0);
  const [data, setData] = useState<GridRowModel<AdminSimpleVoteStored>[]>([]);
  const [filters, setFilters] = useState<Filter[]>(persistedTableData.filters || []);
  const [queryCustomizer, setQueryCustomizer] = useState<AdminSimpleVoteQueryCustomizer>({
    _mask: '{created,type}',
    _seek: {
      limit: 10 + 1,
    },
    _orderBy: [
      {
        attribute: sortModel[0].field,
        descending: sortModel[0].sort === 'desc',
      },
    ],
    ...mapAllFiltersToQueryCustomizerProperties(filters, 'created', 'type'),
  });
  const title: string = t('edemokracia.admin.Pro.votes.Table', { defaultValue: 'Votes' });

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
      const res = await adminProServiceForVotesImpl.listVotes(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminSimpleVote>,
        processQueryCustomizer(queryCustomizer),
      );

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
      'pages.AdminProVotesTable',
      JSON.stringify({
        sortModel,
        filters,
      }),
    );
  }, [sortModel, filters]);

  const pageFilterVotesAction = usePageFilterVotesAction(setFilters, setPage, setQueryCustomizer, openFilterDialog);

  const rowActions: TableRowAction<AdminSimpleVoteStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminSimpleVoteStored) =>
        rowDeleteVotesAction({ __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminPro>, row, () =>
          fetchData(),
        ),
      disabled: (row: AdminSimpleVoteStored) => !row.__deleteable,
    },
  ];

  return (
    <>
      <PageHeader title={title}>
        <Grid item>
          <Button onClick={() => pageRefreshVotesAction(() => fetchData())} disabled={isLoading}>
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
                <CardContent>
                  <DataGrid
                    {...pageServerTableConfig}
                    getRowId={(row: { __identifier: string }) => row.__identifier}
                    loading={isLoading}
                    rows={data}
                    rowCount={rowCount}
                    sortModel={sortModel}
                    onSortModelChange={handleSortModelChange}
                    columns={[...columns, ...columnsActionCalculator(rowActions, { shownActions: 2 })]}
                    onRowClick={(params: GridRowParams<AdminSimpleVoteStored>) => rowViewVotesAction(params.row)}
                    components={{
                      Toolbar: () => (
                        <GridToolbarContainer>
                          <Button
                            variant="outlined"
                            onClick={async () => pageFilterVotesAction(filterOptions, filters)}
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
