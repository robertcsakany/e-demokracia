///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.dashboardhome#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: dashboardhome
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, CardContent, Button, Typography, Card } from '@mui/material';
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
import { useSnackbar } from 'notistack';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import type { Dayjs } from 'dayjs';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../../components';
import { columnsActionCalculator } from '../../../../../components/table';
import { useRangeDialog } from '../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../components/widgets';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { useConfirmationBeforeChange } from '../../../../../hooks';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
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
  useRowDeleteIssuesAction,
  useAdminDebateCreateCommentAction,
  useRowEditDebatesAction,
  useAdminDebateCreateArgumentAction,
  useAdminIssueCreateCommentAction,
  useRowViewDebatesAction,
  useRowViewIssuesAction,
  useAdminDashboardCreateIssueAction,
  useRowDeleteDebatesAction,
  useRowEditIssuesAction,
  useAdminDashboardCreateUserAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.dashboardhome#View
 * Is Access: true
 * Is Dashboard: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminAdminDashboardhomeView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const [signedIdentifier, setSignedIdentifier] = useState<string>();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const AdminDebateCloseDebateAction = useAdminDebateCloseDebateAction();
  const pageRefreshDashboardhomeAction = usePageRefreshDashboardhomeAction();
  const rowDeleteIssuesAction = useRowDeleteIssuesAction();
  const AdminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const rowEditDebatesAction = useRowEditDebatesAction();
  const AdminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const rowViewDebatesAction = useRowViewDebatesAction();
  const rowViewIssuesAction = useRowViewIssuesAction();
  const AdminDashboardCreateIssueAction = useAdminDashboardCreateIssueAction();
  const rowDeleteDebatesAction = useRowDeleteDebatesAction();
  const rowEditIssuesAction = useRowEditIssuesAction();
  const AdminDashboardCreateUserAction = useAdminDashboardCreateUserAction();

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

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminDashboardStored>({} as unknown as AdminDashboardStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminDashboardStored, any>>(
    {} as unknown as Record<keyof AdminDashboardStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminDashboardStored, value: any) => void = useCallback(
    (attributeName: keyof AdminDashboardStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminDashboardStored, string>>(new Map());
  const [debatesSortModel, setDebatesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [issuesSortModel, setIssuesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);

  const debatesRowActions: TableRowAction<AdminDebateStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardDebatesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminDebateStored) => rowDeleteDebatesAction(data, row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.closeDebate', {
        defaultValue: 'Close debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminDebateStored) => AdminDebateCloseDebateAction(row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDebateCreateArgumentButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.createArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminDebateStored) => AdminDebateCreateArgumentAction(row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDebateCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Debate.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminDebateStored) => AdminDebateCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode,
    },
  ];
  const issuesRowActions: TableRowAction<AdminIssueStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardIssuesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueStored) => rowDeleteIssuesAction(data, row, () => fetchData()),
      disabled: (row: AdminIssueStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Issue.createDebate', {
        defaultValue: 'Create debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateDebateAction(row, () => fetchData()),
      disabled: (row: AdminIssueStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.View.edemokracia.admin.Issue.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminIssueStored) => editMode,
    },
  ];

  const title: string = t('edemokracia.admin.Admin.dashboardhome.View', { defaultValue: 'Dashboard' });

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      handleFetchError(error);
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
      } as Record<keyof AdminDashboardStored, any>);
    } catch (error) {
      handleFetchError(error);
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
    setValidation(new Map<keyof AdminDashboardStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
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
              <Typography id="FormattededemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewWelcome">
                {data.welcome}
              </Typography>
            </Grid>

            <Grid item xs={12}>
              <Grid container xs={12} spacing={2}>
                <Grid item>
                  <Button
                    id="ButtonedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewActionGroupCreateIssue"
                    onClick={() => AdminDashboardCreateIssueAction(() => fetchData())}
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
                    id="ButtonedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewActionGroupCreateUser"
                    onClick={() => AdminDashboardCreateUserAction(() => fetchData())}
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

            <Grid container item xs={12} sm={12}>
              <ModeledTabs
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMyissues',
                    name: 'myissues',
                    label: 'My issues',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMydebates',
                    name: 'mydebates',
                    label: 'My debates',
                  },
                ]}
              >
                <Grid item xs={12} sm={12} md={4.0}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMyissuesMyissues"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapperIssues"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.issues ?? []}
                              columns={[
                                ...issuesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDashboardIssues',
                                  issuesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueStored>) => {
                                if (!editMode) {
                                  rowViewIssuesAction(params.row);
                                }
                              }}
                              sortModel={issuesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setIssuesSortModel(newModel);
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
                </Grid>

                <Grid item xs={12} sm={12} md={4.0}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMydebatesMydebates"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapperDebates"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.debates ?? []}
                              columns={[
                                ...debatesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDashboardDebates',
                                  debatesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminDebateStored>) => {
                                if (!editMode) {
                                  rowViewDebatesAction(params.row);
                                }
                              }}
                              sortModel={debatesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setDebatesSortModel(newModel);
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
                </Grid>
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
