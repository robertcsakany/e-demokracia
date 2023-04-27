//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Comment.votes#Table
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: votes
// Page DataElement owner name: edemokracia::admin::Comment

import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { Paper, Card, CardContent, Box, Grid, Button, Container } from '@mui/material';
import type { GridRowModel, GridRowParams, GridSortModel, GridValueFormatterParams } from '@mui/x-data-grid';
import { DataGrid, GridToolbarContainer } from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from 'notistack';
import {
  MdiIcon,
  PageHeader,
  CustomBreadcrumb,
  CustomTablePagination,
  useJudoNavigation,
} from '../../../../../components';
import { columnsActionCalculator } from '../../../../../components/table';
import { useFilterDialog } from '../../../../../components/dialog';
import type { Filter } from '../../../../../components-api';
import type { PersistedTableData, TableRowAction } from '../../../../../utilities';
import { pageServerTableConfig, toastConfig } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  serviceDateToUiDate,
  serviceTimeToUiTime,
  mapAllFiltersToQueryCustomizerProperties,
  processQueryCustomizer,
} from '../../../../../utilities';
import { useAdminCommentVotesTable } from './hooks/useAdminCommentVotesTable';
import {
  AdminComment,
  AdminSimpleVote,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminCommentServiceForVotesImpl } from '../../../../../generated/data-axios';
import { mainContainerPadding } from '../../../../../theme';
import {
  useRowViewVotesAction,
  usePageCreateVotesAction,
  usePageFilterVotesAction,
  usePageRefreshVotesAction,
  useRowDeleteVotesAction,
  useRowEditVotesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Comment.votes#Table
 * Is Access: false
 * Type: Table
 **/
export default function AdminCommentVotesTable() {
  const persistedTableData: PersistedTableData = JSON.parse(
    window.sessionStorage.getItem('pages.AdminCommentVotesTable') || '{}',
  );
  const { t } = useTranslation();
  const { signedIdentifier } = useParams();
  const { navigate } = useJudoNavigation();
  const { openFilterDialog } = useFilterDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const { columns, filterOptions } = useAdminCommentVotesTable();
  const rowViewVotesAction = useRowViewVotesAction();
  const pageCreateVotesAction = usePageCreateVotesAction();
  const pageRefreshVotesAction = usePageRefreshVotesAction();
  const rowDeleteVotesAction = useRowDeleteVotesAction();
  const rowEditVotesAction = useRowEditVotesAction();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
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
  const title: string = t('edemokracia.admin.Comment.votes.Table', { defaultValue: 'Votes' });

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
      const res = await adminCommentServiceForVotesImpl.listVotes(
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
      'pages.AdminCommentVotesTable',
      JSON.stringify({
        sortModel,
        filters,
      }),
    );
  }, [sortModel, filters]);

  const pageFilterVotesAction = usePageFilterVotesAction(setFilters, setPage, setQueryCustomizer, openFilterDialog);

  const rowActions: TableRowAction<AdminSimpleVoteStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminCommentVotesTableEdemokraciaAdminAdminEdemokraciaAdminCommentVotesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminSimpleVoteStored) =>
        rowDeleteVotesAction({ __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminComment>, row, () =>
          fetchData(),
        ),
      disabled: (row: AdminSimpleVoteStored) => !row.__deleteable,
    },
  ];

  return (
    <>
      <PageHeader title={title}>
        <Grid className="page-action" item>
          <Button
            id="page-action-create"
            onClick={() =>
              pageCreateVotesAction({ __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminComment>, () =>
                fetchData(),
              )
            }
            disabled={isLoading}
          >
            <MdiIcon path="file_document_plus" />
            {t('judo.pages.table.create', { defaultValue: 'Create' })}
          </Button>
        </Grid>
        <Grid className="page-action" item>
          <Button
            id="page-action-refresh"
            onClick={() => pageRefreshVotesAction(() => fetchData())}
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
                <CardContent id="PageDefinitionedemokraciaAdminAdminEdemokraciaAdminCommentVotesTable-data-grid">
                  <DataGrid
                    {...pageServerTableConfig}
                    sx={{
                      // overflow: 'hidden',
                      display: 'grid',
                    }}
                    getRowId={(row: { __identifier: string }) => row.__identifier}
                    loading={isLoading}
                    rows={data}
                    rowCount={rowCount}
                    getRowClassName={() => 'data-grid-row'}
                    getCellClassName={() => 'data-grid-cell'}
                    sortModel={sortModel}
                    onSortModelChange={handleSortModelChange}
                    columns={[
                      ...columns,
                      ...columnsActionCalculator(
                        'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCommentVotes',
                        rowActions,
                        { shownActions: 2 },
                      ),
                    ]}
                    onRowClick={(params: GridRowParams<AdminSimpleVoteStored>) =>
                      rowViewVotesAction(
                        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminComment>,
                        params.row,
                      )
                    }
                    components={{
                      Toolbar: () => (
                        <GridToolbarContainer>
                          <Button
                            id="FilterActionedemokraciaAdminAdminEdemokraciaAdminCommentVotesTableEdemokraciaAdminAdminEdemokraciaAdminCommentVotesPageFilter"
                            variant="outlined"
                            onClick={async () =>
                              pageFilterVotesAction(
                                'FilterActionedemokraciaAdminAdminEdemokraciaAdminCommentVotesTableEdemokraciaAdminAdminEdemokraciaAdminCommentVotesPageFilter-filter',
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
