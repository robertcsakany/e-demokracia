//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.dashboardhome#Dashboard
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: dashboardhome
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, Typography } from '@mui/material';
import { LoadingButton } from '@mui/lab';
import {
  DataGrid,
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridRowSelectionModel,
  GridSortItem,
  GridSortModel,
  GridToolbarContainer,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../components';
import { columnsActionCalculator } from '../../../../components/table';
import { useRangeDialog } from '../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  BinaryInput,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../components/widgets';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  serviceDateToUiDate,
  uiTimeToServiceTime,
  serviceTimeToUiTime,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../utilities';
import { useConfirmationBeforeChange } from '../../../../hooks';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../config';
import { useL10N } from '../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../custom';
import {
  AdminIssueMaskBuilder,
  AdminDebateMaskBuilder,
  AdminVoteEntryQueryCustomizer,
  AdminIssueStored,
  AdminVoteEntryStored,
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminVoteEntry,
  AdminDebate,
  AdminIssue,
  AdminDebateStored,
  AdminDashboardStored,
  AdminVoteEntryMaskBuilder,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../generated/data-api';
import { adminAdminServiceForDashboardhomeImpl, adminDashboardServiceImpl } from '../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../theme';
import { useAdminAdminDashboardhomeDashboard } from './hooks/useAdminAdminDashboardhomeDashboard';
import {
  useRowViewIssuesAction,
  useAdminDebateCreateArgumentAction,
  useAdminDebateCreateCommentAction,
  useRowDeleteDebatesAction,
  useRowDeleteIssuesAction,
  useAdminDebateCloseDebateAction,
  useAdminIssueCreateDebateAction,
  useRowEditDebatesAction,
  useAdminIssueCreateCommentAction,
  useRowViewDebatesAction,
  useAdminDashboardCreateIssueAction,
  useAdminDashboardCreateUserAction,
  useRowEditIssuesAction,
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
  const AdminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();
  const AdminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const rowDeleteDebatesAction = useRowDeleteDebatesAction();
  const rowDeleteIssuesAction = useRowDeleteIssuesAction();
  const AdminDebateCloseDebateAction = useAdminDebateCloseDebateAction();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const rowEditDebatesAction = useRowEditDebatesAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const rowViewDebatesAction = useRowViewDebatesAction();
  const AdminDashboardCreateIssueAction = useAdminDashboardCreateIssueAction();
  const AdminDashboardCreateUserAction = useAdminDashboardCreateUserAction();
  const rowEditIssuesAction = useRowEditIssuesAction();
  const pageRefreshDashboardhomeAction = usePageRefreshDashboardhomeAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const {
    queryCustomizer,
    debatesColumns,
    debatesRangeFilterOptions,
    debatesInitialQueryCustomizer,
    issuesColumns,
    issuesRangeFilterOptions,
    issuesInitialQueryCustomizer,
    voteEntriesColumns,
    voteEntriesRangeFilterOptions,
    voteEntriesInitialQueryCustomizer,
  } = useAdminAdminDashboardhomeDashboard();

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
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = [];
      const timeTypes: string[] = [];
      if (dateTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiDateToServiceDate(value);
      } else if (dateTimeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = value;
      } else if (timeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiTimeToServiceTime(value);
      } else {
        payloadDiff[attributeName] = value;
      }
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminDashboard, string>>(new Map());

  const [debatesSortModel, setDebatesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);

  const [issuesSortModel, setIssuesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);

  const [voteEntriesSortModel, setVoteEntriesSortModel] = useState<GridSortModel>([{ field: 'created', sort: 'asc' }]);

  const debatesRowActions: TableRowAction<AdminDebateStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDashboardDebatesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminDebateStored) => rowDeleteDebatesAction(data, row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Debate.closeDebate', {
        defaultValue: 'Close debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminDebateStored) => AdminDebateCloseDebateAction(row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDebateCreateArgumentButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Debate.createArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminDebateStored) => AdminDebateCreateArgumentAction(row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDebateCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Debate.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminDebateStored) => AdminDebateCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminDebateStored) => editMode,
    },
  ];
  const issuesRowActions: TableRowAction<AdminIssueStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDashboardIssuesRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueStored) => rowDeleteIssuesAction(data, row, () => fetchData()),
      disabled: (row: AdminIssueStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Issue.createDebate', {
        defaultValue: 'Create debate',
      }) as string,
      icon: <MdiIcon path="wechat" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateDebateAction(row, () => fetchData()),
      disabled: (row: AdminIssueStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminIssueCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Admin.dashboardhome.Dashboard.edemokracia.admin.Issue.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminIssueStored) => AdminIssueCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminIssueStored) => editMode,
    },
  ];
  const voteEntriesRowActions: TableRowAction<AdminVoteEntryStored>[] = [];

  const title: string = t('edemokracia.admin.Admin.dashboardhome.Dashboard', { defaultValue: 'Dashboard' });

  const isFormUpdateable = useCallback(() => {
    return false && typeof data?.__updateable === 'boolean' && data?.__updateable;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false && typeof data?.__deleteable === 'boolean' && data?.__deleteable;
  }, [data]);

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
    setValidation(new Map<keyof AdminDashboard, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid className="page-action" item>
            <LoadingButton
              loading={isLoading}
              loadingPosition="start"
              id="page-action-refresh"
              startIcon={<MdiIcon path="refresh" />}
              onClick={() => fetchData()}
            >
              <span>{t('judo.pages.refresh', { defaultValue: 'Refresh' })}</span>
            </LoadingButton>
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
              <Grid container direction="row" alignItems="center">
                <Grid item>
                  <Typography id="FormattededemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewWelcome"></Typography>
                </Grid>
              </Grid>
            </Grid>

            <Grid item xs={12}>
              <Grid container xs={12} spacing={2}>
                <Grid item>
                  <LoadingButton
                    id="ButtonedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewActionGroupCreateIssue"
                    loading={isLoading}
                    startIcon={<MdiIcon path="ticket-confirmation" />}
                    loadingPosition="start"
                    onClick={() => AdminDashboardCreateIssueAction(() => fetchData())}
                    disabled={editMode}
                  >
                    <span>
                      {t(
                        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.actionGroup.createIssue',
                        { defaultValue: 'Create issue' },
                      )}
                    </span>
                  </LoadingButton>
                </Grid>

                <Grid item>
                  <LoadingButton
                    id="ButtonedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewActionGroupCreateUser"
                    loading={isLoading}
                    startIcon={<MdiIcon path="account" />}
                    loadingPosition="start"
                    onClick={() => AdminDashboardCreateUserAction(() => fetchData())}
                    disabled={editMode}
                  >
                    <span>
                      {t(
                        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.actionGroup.createUser',
                        { defaultValue: 'Create user' },
                      )}
                    </span>
                  </LoadingButton>
                </Grid>
              </Grid>
            </Grid>

            <Grid container item xs={12} sm={12}>
              <ModeledTabs
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissues',
                    name: 'myissues',
                    label: 'My issues',
                    icon: 'ticket-account',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebates',
                    name: 'mydebates',
                    label: 'My debates',
                    icon: 'wechat',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotes',
                    name: 'myvotes',
                    label: 'My votes',
                    icon: 'vote-outline',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissues"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapperIssues"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              sx={{
                                // overflow: 'hidden',
                                display: 'grid',
                              }}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.issues ?? []}
                              getRowClassName={() => 'data-grid-row'}
                              getCellClassName={() => 'data-grid-cell'}
                              columns={[
                                ...issuesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDashboardIssues',
                                  issuesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableRowSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueStored>) => {
                                if (!editMode) {
                                  rowViewIssuesAction(data, params.row);
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

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebates"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapperDebates"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              sx={{
                                // overflow: 'hidden',
                                display: 'grid',
                              }}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.debates ?? []}
                              getRowClassName={() => 'data-grid-row'}
                              getCellClassName={() => 'data-grid-cell'}
                              columns={[
                                ...debatesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDashboardDebates',
                                  debatesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableRowSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminDebateStored>) => {
                                if (!editMode) {
                                  rowViewDebatesAction(data, params.row);
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

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotes"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapperVoteEntries"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              sx={{
                                // overflow: 'hidden',
                                display: 'grid',
                              }}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.voteEntries ?? []}
                              getRowClassName={() => 'data-grid-row'}
                              getCellClassName={() => 'data-grid-cell'}
                              columns={[
                                ...voteEntriesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDashboardVoteEntries',
                                  voteEntriesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableRowSelectionOnClick
                              sortModel={voteEntriesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setVoteEntriesSortModel(newModel);
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
