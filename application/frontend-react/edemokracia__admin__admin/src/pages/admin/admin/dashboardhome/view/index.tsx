///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.dashboardhome#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: dashboardhome
// Page DataElement owner name: edemokracia::admin::Admin

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
  AdminDashboardQueryCustomizer,
  AdminIssueMaskBuilder,
  AdminIssueQueryCustomizer,
  AdminDebateMaskBuilder,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
  AdminDebateStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminAdminServiceForDashboardhomeImpl, adminDashboardServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminAdminDashboardhomeView } from './hooks/useAdminAdminDashboardhomeView';
import {
  useAdminIssueCreateDebateAction,
  useAdminDebateCloseDebateAction,
  usePageRefreshDashboardhomeAction,
  useAdminIssueCreateCommentAction,
  useRowViewDebatesAction,
  useRowViewIssuesAction,
  useAdminDashboardCreateIssueAction,
  useAdminDebateCreateCommentAction,
  useAdminDashboardCreateUserAction,
  useAdminDebateCreateArgumentAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.dashboardhome#View
 * Is Access: true
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminAdminDashboardhomeView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const [signedIdentifier, setSignedIdentifier] = useState<string>();
  const adminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const adminDebateCloseDebateAction = useAdminDebateCloseDebateAction();
  const pageRefreshDashboardhomeAction = usePageRefreshDashboardhomeAction();
  const adminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const rowViewDebatesAction = useRowViewDebatesAction();
  const rowViewIssuesAction = useRowViewIssuesAction();
  const adminDashboardCreateIssueAction = useAdminDashboardCreateIssueAction();
  const adminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const adminDashboardCreateUserAction = useAdminDashboardCreateUserAction();
  const adminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const {
    queryCustomizer,
    debatesColumns,
    debatesRangeFilterOptions,
    debatesInitialQueryCustomizer,
    issuesColumns,
    issuesRangeFilterOptions,
    issuesInitialQueryCustomizer,
  } = useAdminAdminDashboardhomeView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminDashboardStored>({} as unknown as AdminDashboardStored);
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
  const [debatesSortModel, setDebatesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [issuesSortModel, setIssuesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);

  const debatesRowActions: TableRowAction<AdminDebateStored>[] = [
    {
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.closeDebate', {
        defaultValue: 'Close debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminDebateStored) => adminDebateCloseDebateAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.createArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminDebateStored) => adminDebateCreateArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminDebateStored) => adminDebateCreateCommentAction(row, () => fetchData()),
    },
  ];
  const issuesRowActions: TableRowAction<AdminIssueStored>[] = [
    {
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Issue.createDebate', {
        defaultValue: 'Create debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminIssueStored) => adminIssueCreateDebateAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Issue.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminIssueStored) => adminIssueCreateCommentAction(row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.Admin.dashboardhome.Dashboard.View', { defaultValue: 'Dashboard' });

  const init = async () => {
    setIsLoading(true);

    try {
      const res = await adminAdminServiceForDashboardhomeImpl.getDashboardhome('{}');

      setIsLoading(false);

      if (res?.__signedIdentifier) {
        setData(res);
        setSignedIdentifier(res.__signedIdentifier);
      } else {
        navigate('*');
      }
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    init();
  }, []);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminDashboardServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as AdminDashboardStored,
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
    if (signedIdentifier) {
      fetchData();
    }
  }, [signedIdentifier]);

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
                name="welcome"
                id="Formatted@edemokracia/admin/Admin/edemokracia/admin/Admin.dashboardhome/View/default/Dashboard_View/welcome"
                label={
                  t('edemokracia.admin.Admin.dashboardhome.Dashboard.View.welcome', { defaultValue: '' }) as string
                }
                value={data.welcome}
                helperText={validation.get('welcome')}
                className={'Mui-readOnly'}
                InputProps={{
                  readOnly: true,
                }}
              />
            </Grid>

            <Grid item>
              <Grid container xs={12} spacing={2}>
                <Grid item>
                  <Button
                    onClick={() => adminDashboardCreateIssueAction(() => fetchData())}
                    disabled={isLoading || editMode}
                  >
                    <MdiIcon path="ticket-confirmation" />
                    {t('edemokracia.admin.Admin.dashboardhome.Dashboard.View.actionGroup.createIssue', {
                      defaultValue: 'Create issue',
                    })}
                  </Button>
                </Grid>

                <Grid item>
                  <Button
                    onClick={() => adminDashboardCreateUserAction(() => fetchData())}
                    disabled={isLoading || editMode}
                  >
                    <MdiIcon path="account" />
                    {t('edemokracia.admin.Admin.dashboardhome.Dashboard.View.actionGroup.createUser', {
                      defaultValue: 'Create user',
                    })}
                  </Button>
                </Grid>
              </Grid>
            </Grid>

            <Grid container item>
              <ModeledTabs
                activeIndex={0}
                childTabs={[
                  {
                    id: 'myissues',
                    name: 'myissues',
                    label: 'My issues',
                  },
                  {
                    id: 'mydebates',
                    name: 'mydebates',
                    label: 'My debates',
                  },
                ]}
              >
                <Grid container item xs={12} sm={4.0} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid
                    container
                    item
                    xs={12}
                    sm={12.0}
                    direction="column"
                    alignItems="stretch"
                    justifyContent="flex-start"
                  >
                    <Grid item>
                      <DataGrid
                        {...baseTableConfig}
                        getRowId={(row: { __identifier: string }) => row.__identifier}
                        loading={isLoading}
                        rows={data?.issues ?? []}
                        columns={[...issuesColumns, ...columnsActionCalculator(issuesRowActions, { shownActions: 2 })]}
                        disableSelectionOnClick
                        onRowClick={(params: GridRowParams<AdminIssueStored>) => rowViewIssuesAction(params.row)}
                        sortModel={issuesSortModel}
                        onSortModelChange={(newModel: GridSortModel) => {
                          setIssuesSortModel(newModel);
                        }}
                        components={{
                          Toolbar: () => <div>{/* No actions defined */}</div>,
                        }}
                      />
                    </Grid>
                  </Grid>
                </Grid>

                <Grid container item xs={12} sm={4.0} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid
                    container
                    item
                    xs={12}
                    sm={12.0}
                    direction="column"
                    alignItems="stretch"
                    justifyContent="flex-start"
                  >
                    <Grid item>
                      <DataGrid
                        {...baseTableConfig}
                        getRowId={(row: { __identifier: string }) => row.__identifier}
                        loading={isLoading}
                        rows={data?.debates ?? []}
                        columns={[
                          ...debatesColumns,
                          ...columnsActionCalculator(debatesRowActions, { shownActions: 2 }),
                        ]}
                        disableSelectionOnClick
                        onRowClick={(params: GridRowParams<AdminDebateStored>) => rowViewDebatesAction(params.row)}
                        sortModel={debatesSortModel}
                        onSortModelChange={(newModel: GridSortModel) => {
                          setDebatesSortModel(newModel);
                        }}
                        components={{
                          Toolbar: () => <div>{/* No actions defined */}</div>,
                        }}
                      />
                    </Grid>
                  </Grid>
                </Grid>
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
