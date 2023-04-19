//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.issues#Table
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: issues
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { useSnackbar } from 'notistack';
import { Paper, Card, CardContent, Box, Grid, Button, Container } from '@mui/material';
import type { GridRowModel, GridRowParams, GridSortModel, GridValueFormatterParams } from '@mui/x-data-grid';
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
  serviceDateToUiDate,
} from '../../../../../utilities';
import type { PersistedTableData, TableRowAction } from '../../../../../utilities';
import { pageServerTableConfig, toastConfig } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { useAdminAdminIssuesTable } from './hooks/useAdminAdminIssuesTable';
import { AdminIssueQueryCustomizer, AdminIssue, AdminIssueStored } from '../../../../../generated/data-api';
import { adminAdminServiceForIssuesImpl } from '../../../../../generated/data-axios';
import { mainContainerPadding } from '../../../../../theme';
import {
  useAdminIssueCreateDebateAction,
  useAdminIssueCreateCommentAction,
  usePageRefreshIssuesAction,
  usePageFilterIssuesAction,
  useRowEditIssuesAction,
  useRowViewIssuesAction,
  useRowDeleteIssuesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.issues#Table
 * Is Access: true
 * Is Dashboard: false
 * Type: Table
 **/
export default function AdminAdminIssuesTable() {
  const persistedTableData: PersistedTableData = JSON.parse(
    window.sessionStorage.getItem('pages.AdminAdminIssuesTable') || '{}',
  );
  const { t } = useTranslation();
  const { navigate } = useJudoNavigation();
  const { openFilterDialog } = useFilterDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const { columns, filterOptions } = useAdminAdminIssuesTable();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const pageRefreshIssuesAction = usePageRefreshIssuesAction();
  const rowEditIssuesAction = useRowEditIssuesAction();
  const rowViewIssuesAction = useRowViewIssuesAction();
  const rowDeleteIssuesAction = useRowDeleteIssuesAction();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [rowCount, setRowCount] = useState<number>(0);
  const [sortModel, setSortModel] = useState<GridSortModel>(
    persistedTableData.sortModel || [{ field: 'title', sort: 'asc' }],
  );
  const [lastItem, setLastItem] = useState<AdminIssueStored>();
  const [firstItem, setFirstItem] = useState<AdminIssueStored>();
  const [isNextButtonEnabled, setIsNextButtonEnabled] = useState<boolean>(true);
  const [page, setPage] = useState<number>(0);
  const [data, setData] = useState<GridRowModel<AdminIssueStored>[]>([]);
  const [filters, setFilters] = useState<Filter[]>(persistedTableData.filters || []);
  const [queryCustomizer, setQueryCustomizer] = useState<AdminIssueQueryCustomizer>({
    _mask: '{title,status,created,numberOfDebates,description}',
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
      'status',
      'created',
      'numberOfDebates',
      'description',
    ),
  });
  const title: string = t('edemokracia.admin.Admin.issues.Table', { defaultValue: 'Issues' });

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
      const res = await adminAdminServiceForIssuesImpl.listIssues(processQueryCustomizer(queryCustomizer));

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
      'pages.AdminAdminIssuesTable',
      JSON.stringify({
        sortModel,
        filters,
      }),
    );
  }, [sortModel, filters]);

  const pageFilterIssuesAction = usePageFilterIssuesAction(setFilters, setPage, setQueryCustomizer, openFilterDialog);

  const rowActions: TableRowAction<AdminIssueStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssuesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueStored) => rowDeleteIssuesAction(row, () => fetchData()),
      disabled: (row: AdminIssueStored) => !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation',
      label: t('edemokracia.admin.Admin.issues.Table.edemokracia.admin.Issue.createDebate', {
        defaultValue: 'Create debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateDebateAction(row, () => fetchData()),
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminIssueCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Admin.issues.Table.edemokracia.admin.Issue.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateCommentAction(row, () => fetchData()),
    },
  ];

  return (
    <>
      <PageHeader title={title}>
        <Grid item>
          <Button
            id="page-action-refresh"
            onClick={() => pageRefreshIssuesAction(() => fetchData())}
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
                <CardContent id="PageDefinitionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTable-data-grid">
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
                        'RelationTypeedemokraciaAdminAdminEdemokraciaAdminAdminIssues',
                        rowActions,
                        { shownActions: 2 },
                      ),
                    ]}
                    onRowClick={(params: GridRowParams<AdminIssueStored>) => rowViewIssuesAction(params.row)}
                    components={{
                      Toolbar: () => (
                        <GridToolbarContainer>
                          <Button
                            id="FilterActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssuesPageFilter"
                            variant="outlined"
                            onClick={async () =>
                              pageFilterIssuesAction(
                                'FilterActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssuesPageFilter-filter',
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
