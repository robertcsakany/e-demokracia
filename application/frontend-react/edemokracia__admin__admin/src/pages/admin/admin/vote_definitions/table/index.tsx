///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.voteDefinitions#Table
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: voteDefinitions
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
import { pageServerTableConfig } from '../../../../../config';
import { useAdminAdminVoteDefinitionsTable } from './hooks/useAdminAdminVoteDefinitionsTable';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteDefinition,
} from '../../../../../generated/data-api';
import { adminAdminServiceForVoteDefinitionsImpl } from '../../../../../generated/data-axios';
import { mainContainerPadding } from '../../../../../theme';
import {
  useAdminVoteDefinitionVoteRatingAction,
  useAdminVoteDefinitionVoteYesNoAction,
  useAdminVoteDefinitionVoteYesNoAbstainAction,
  useRowEditVoteDefinitionsAction,
  useRowDeleteVoteDefinitionsAction,
  usePageFilterVoteDefinitionsAction,
  usePageRefreshVoteDefinitionsAction,
  useAdminVoteDefinitionVoteSelectAnswerAction,
  useRowViewVoteDefinitionsAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.voteDefinitions#Table
 * Is Access: true
 * Type: Table
 **/
export default function AdminAdminVoteDefinitionsTable() {
  const persistedTableData: PersistedTableData = JSON.parse(
    window.sessionStorage.getItem('pages.AdminAdminVoteDefinitionsTable') || '{}',
  );
  const { t } = useTranslation();
  const { navigate } = useJudoNavigation();
  const { openFilterDialog } = useFilterDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { columns, filterOptions } = useAdminAdminVoteDefinitionsTable();
  const adminVoteDefinitionVoteRatingAction = useAdminVoteDefinitionVoteRatingAction();
  const adminVoteDefinitionVoteYesNoAction = useAdminVoteDefinitionVoteYesNoAction();
  const adminVoteDefinitionVoteYesNoAbstainAction = useAdminVoteDefinitionVoteYesNoAbstainAction();
  const rowEditVoteDefinitionsAction = useRowEditVoteDefinitionsAction();
  const rowDeleteVoteDefinitionsAction = useRowDeleteVoteDefinitionsAction();
  const pageRefreshVoteDefinitionsAction = usePageRefreshVoteDefinitionsAction();
  const adminVoteDefinitionVoteSelectAnswerAction = useAdminVoteDefinitionVoteSelectAnswerAction();
  const rowViewVoteDefinitionsAction = useRowViewVoteDefinitionsAction();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [rowCount, setRowCount] = useState<number>(0);
  const [sortModel, setSortModel] = useState<GridSortModel>(
    persistedTableData.sortModel || [{ field: 'title', sort: 'asc' }],
  );
  const [lastItem, setLastItem] = useState<AdminVoteDefinitionStored>();
  const [firstItem, setFirstItem] = useState<AdminVoteDefinitionStored>();
  const [isNextButtonEnabled, setIsNextButtonEnabled] = useState<boolean>(true);
  const [page, setPage] = useState<number>(0);
  const [data, setData] = useState<GridRowModel<AdminVoteDefinitionStored>[]>([]);
  const [filters, setFilters] = useState<Filter[]>(persistedTableData.filters || []);
  const [queryCustomizer, setQueryCustomizer] = useState<AdminVoteDefinitionQueryCustomizer>({
    _mask: '{title,created,description,status,closeAt,isRatingType,isSelectAnswerType,isYesNoAbstainType,isYesNoType}',
    _seek: {
      limit: 10 + 1,
    },
    _orderBy: [
      {
        attribute: sortModel[0].field,
        descending: sortModel[0].sort === 'desc',
      },
    ],
    ...mapAllFiltersToQueryCustomizerProperties(
      filters,
      'title',
      'created',
      'description',
      'status',
      'closeAt',
      'isRatingType',
      'isSelectAnswerType',
      'isYesNoAbstainType',
      'isYesNoType',
    ),
  });
  const title: string = t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions', {
    defaultValue: 'TransferObject Table',
  });

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
      const res = await adminAdminServiceForVoteDefinitionsImpl.listVoteDefinitions(
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
      'pages.AdminAdminVoteDefinitionsTable',
      JSON.stringify({
        sortModel,
        filters,
      }),
    );
  }, [sortModel, filters]);

  const pageFilterVoteDefinitionsAction = usePageFilterVoteDefinitionsAction(
    setFilters,
    setPage,
    setQueryCustomizer,
    openFilterDialog,
  );

  const rowActions: TableRowAction<AdminVoteDefinitionStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminVoteDefinitionStored) => rowDeleteVoteDefinitionsAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.voteDefinitions.Table.edemokracia.admin.VoteDefinition.voteYesNo', {
        defaultValue: 'VoteYesNo',
      }) as string,
      icon: <MdiIcon path="chevron_right" />,
      action: async (row: AdminVoteDefinitionStored) => adminVoteDefinitionVoteYesNoAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.voteDefinitions.Table.edemokracia.admin.VoteDefinition.voteYesNoAbstain', {
        defaultValue: 'VoteYesNoAbstain',
      }) as string,
      icon: <MdiIcon path="chevron_right" />,
      action: async (row: AdminVoteDefinitionStored) =>
        adminVoteDefinitionVoteYesNoAbstainAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.voteDefinitions.Table.edemokracia.admin.VoteDefinition.voteSelectAnswer', {
        defaultValue: 'VoteSelectAnswer',
      }) as string,
      icon: <MdiIcon path="chevron_right" />,
      action: async (row: AdminVoteDefinitionStored) =>
        adminVoteDefinitionVoteSelectAnswerAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.voteDefinitions.Table.edemokracia.admin.VoteDefinition.voteRating', {
        defaultValue: 'VoteRating',
      }) as string,
      icon: <MdiIcon path="chevron_right" />,
      action: async (row: AdminVoteDefinitionStored) => adminVoteDefinitionVoteRatingAction(row, () => fetchData()),
    },
  ];

  return (
    <>
      <PageHeader title={title}>
        <Grid item>
          <Button onClick={() => pageRefreshVoteDefinitionsAction(() => fetchData())} disabled={isLoading}>
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
                  onRowClick={(params: GridRowParams<AdminVoteDefinitionStored>) =>
                    rowViewVoteDefinitionsAction(params.row)
                  }
                  components={{
                    Toolbar: () => (
                      <GridToolbarContainer>
                        <Button
                          variant="outlined"
                          onClick={async () => pageFilterVoteDefinitionsAction(filterOptions, filters)}
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
