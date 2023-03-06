///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.dashboardhome#Dashboard
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: dashboardhome
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Button,
  Card,
  CardContent,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Paper,
  Divider,
  RadioGroup,
  FormControlLabel,
  Radio,
} from '@mui/material';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSortItem,
  GridToolbarContainer,
  GridRowParams,
} from '@mui/x-data-grid';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import { useParams } from 'react-router-dom';
import type { Dayjs } from 'dayjs';
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
} from '../../../../components';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../config';
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
} from '../../../../generated/data-api';
import { adminAdminServiceForDashboardhomeImpl, adminDashboardServiceImpl } from '../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../theme';
import { useAdminAdminDashboardhomeDashboard } from './hooks/useAdminAdminDashboardhomeDashboard';
import {
  useRowViewIssuesAction,
  useAdminDebateCloseDebateAction,
  useAdminIssueCreateDebateAction,
  useAdminIssueCreateCommentAction,
  useAdminDebateCreateArgumentAction,
  useRowViewDebatesAction,
  useAdminDashboardCreateIssueAction,
  useAdminDashboardCreateUserAction,
  useAdminDebateCreateCommentAction,
  usePageRefreshDashboardhomeAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.dashboardhome#Dashboard
 * Is Access: true
 * Is Dashboard: true
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminAdminDashboardhomeDashboard() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const [signedIdentifier, setSignedIdentifier] = useState<string>();
  const rowViewIssuesAction = useRowViewIssuesAction();
  const AdminDebateCloseDebateAction = useAdminDebateCloseDebateAction();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const AdminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();
  const rowViewDebatesAction = useRowViewDebatesAction();
  const AdminDashboardCreateIssueAction = useAdminDashboardCreateIssueAction();
  const AdminDashboardCreateUserAction = useAdminDashboardCreateUserAction();
  const AdminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const pageRefreshDashboardhomeAction = usePageRefreshDashboardhomeAction();

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
  } = useAdminAdminDashboardhomeDashboard();

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
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Debate.closeDebate', {
        defaultValue: 'Close debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminDebateStored) => AdminDebateCloseDebateAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Debate.createArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminDebateStored) => AdminDebateCreateArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Debate.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminDebateStored) => AdminDebateCreateCommentAction(row, () => fetchData()),
    },
  ];
  const issuesRowActions: TableRowAction<AdminIssueStored>[] = [
    {
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Issue.createDebate', {
        defaultValue: 'Create debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateDebateAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Issue.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateCommentAction(row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.Admin.dashboardhome.Dashboard', { defaultValue: 'Dashboard' });

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
          <Grid
            container
            xs={12}
            sm={12}
            spacing={2}
            direction="column"
            alignItems="stretch"
            justifyContent="flex-start"
          >
            <Grid item xs={12} sm={12}>
              <Typography>{data.welcome}</Typography>
            </Grid>

            <Grid item xs={12}>
              <Grid container xs={12} spacing={2}>
                <Grid item>
                  <Button
                    onClick={() => AdminDashboardCreateIssueAction(() => fetchData())}
                    disabled={isLoading || editMode}
                  >
                    <MdiIcon path="ticket-confirmation" />
                    {t(
                      'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.actionGroup.createIssue',
                      { defaultValue: 'Create issue' },
                    )}
                  </Button>
                </Grid>

                <Grid item>
                  <Button
                    onClick={() => AdminDashboardCreateUserAction(() => fetchData())}
                    disabled={isLoading || editMode}
                  >
                    <MdiIcon path="account" />
                    {t(
                      'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.actionGroup.createUser',
                      { defaultValue: 'Create user' },
                    )}
                  </Button>
                </Grid>
              </Grid>
            </Grid>

            <Grid container item xs={12} sm={12}>
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
                <Grid item xs={12} sm={12} md={4.0}>
                  <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.issues ?? []}
                              columns={[
                                ...issuesColumns,
                                ...columnsActionCalculator(issuesRowActions, { shownActions: 2 }),
                              ]}
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
                    </Grid>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12} md={4.0}>
                  <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
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
                              onRowClick={(params: GridRowParams<AdminDebateStored>) =>
                                rowViewDebatesAction(params.row)
                              }
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
