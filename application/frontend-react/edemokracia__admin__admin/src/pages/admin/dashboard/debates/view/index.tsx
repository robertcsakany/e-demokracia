///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Dashboard.debates#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: debates
// Page DataElement owner name: edemokracia::admin::Dashboard

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
} from '../../../../../components';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import {
  AdminCon,
  AdminIssueStored,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminIssueQueryCustomizer,
  AdminProQueryCustomizer,
  AdminCommentMaskBuilder,
  AdminVoteDefinitionMaskBuilder,
  AdminComment,
  AdminDebateStored,
  AdminUser,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
  AdminIssueMaskBuilder,
  AdminVoteDefinitionQueryCustomizer,
  AdminProMaskBuilder,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminPro,
  EdemokraciaDebateStatus,
  AdminVoteDefinitionStored,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminDashboardServiceImpl, adminDebateServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminDashboardDebatesView } from './hooks/useAdminDashboardDebatesView';
import {
  useAdminConCreateSubArgumentAction,
  useAdminDebateCreateCommentAction,
  useLinkViewVoteDefinitionAction,
  useRowViewProsAction,
  useRowDeleteCommentsAction,
  useRowDeleteConsAction,
  useAdminProCreateSubArgumentAction,
  useLinkViewCreatedByAction,
  usePageRefreshDebatesAction,
  useAdminConCreateCommentAction,
  useRowEditConsAction,
  useAdminProVoteUpAction,
  useLinkViewIssueAction,
  useAdminCommentVoteDownAction,
  useAdminConVoteDownAction,
  useAdminProCreateCommentAction,
  useRowDeleteProsAction,
  useRowEditProsAction,
  useAdminCommentVoteUpAction,
  useRowViewConsAction,
  useAdminDebateCreateArgumentAction,
  useAdminConVoteUpAction,
  useAdminProVoteDownAction,
  useRowEditCommentsAction,
  useRowViewCommentsAction,
  useAdminDebateCloseDebateAction,
} from './actions';

/**
 * Name: edemokracia::admin::Dashboard.debates#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminDashboardDebatesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const AdminConCreateSubArgumentAction = useAdminConCreateSubArgumentAction();
  const AdminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const linkViewVoteDefinitionAction = useLinkViewVoteDefinitionAction();
  const rowViewProsAction = useRowViewProsAction();
  const rowDeleteCommentsAction = useRowDeleteCommentsAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const AdminProCreateSubArgumentAction = useAdminProCreateSubArgumentAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const pageRefreshDebatesAction = usePageRefreshDebatesAction();
  const AdminConCreateCommentAction = useAdminConCreateCommentAction();
  const rowEditConsAction = useRowEditConsAction();
  const AdminProVoteUpAction = useAdminProVoteUpAction();
  const linkViewIssueAction = useLinkViewIssueAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const AdminConVoteDownAction = useAdminConVoteDownAction();
  const AdminProCreateCommentAction = useAdminProCreateCommentAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const rowEditProsAction = useRowEditProsAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const rowViewConsAction = useRowViewConsAction();
  const AdminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();
  const AdminConVoteUpAction = useAdminConVoteUpAction();
  const AdminProVoteDownAction = useAdminProVoteDownAction();
  const rowEditCommentsAction = useRowEditCommentsAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const AdminDebateCloseDebateAction = useAdminDebateCloseDebateAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const {
    queryCustomizer,
    consColumns,
    consRangeFilterOptions,
    consInitialQueryCustomizer,
    prosColumns,
    prosRangeFilterOptions,
    prosInitialQueryCustomizer,
    commentsColumns,
    commentsRangeFilterOptions,
    commentsInitialQueryCustomizer,
  } = useAdminDashboardDebatesView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminDebateStored>({} as unknown as AdminDebateStored);
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
  const [consSortModel, setConsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [prosSortModel, setProsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'created', sort: 'asc' }]);

  const consRowActions: TableRowAction<AdminConStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminConStored) => rowDeleteConsAction(data, row, () => fetchData()),
      disabled: (row: AdminConStored) => !row.__deleteable,
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Con.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => AdminConVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Con.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => AdminConVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => AdminConCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Con.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminConStored) => AdminConCreateCommentAction(row, () => fetchData()),
    },
  ];
  const prosRowActions: TableRowAction<AdminProStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminProStored) => rowDeleteProsAction(data, row, () => fetchData()),
      disabled: (row: AdminProStored) => !row.__deleteable,
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Pro.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => AdminProVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Pro.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => AdminProVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => AdminProCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => AdminProCreateCommentAction(row, () => fetchData()),
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminCommentStored) => rowDeleteCommentsAction(data, row, () => fetchData()),
      disabled: (row: AdminCommentStored) => !row.__deleteable,
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Comment.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Dashboard.debates.View.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.Dashboard.debates.View', { defaultValue: 'View / Edit Debate' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminDebateServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminDebate>,
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
    fetchData();
  }, []);

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
              <Card>
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="wechat" />
                        <Typography variant="h6" component="h1">
                          {t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.Label', {
                            defaultValue: 'Debate',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12} md={8.0}>
                          <TextField
                            required
                            name="title"
                            id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Dashboard.debates/View/default/Debate_View/debate/LabelWrapper/debate/title"
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.title', {
                                defaultValue: 'Title',
                              }) as string
                            }
                            value={data.title}
                            error={!!validation.get('title')}
                            helperText={validation.get('title')}
                            onChange={(event) => storeDiff('title', event.target.value)}
                            className={false || !editMode ? 'Mui-readOnly' : undefined}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
                              readOnly: false || !editMode,
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="text_fields" />
                                </InputAdornment>
                              ),
                            }}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={2.0}>
                          <TextField
                            required
                            name="status"
                            id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Dashboard.debates/View/default/Debate_View/debate/LabelWrapper/debate/status"
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.status', {
                                defaultValue: 'Status',
                              }) as string
                            }
                            value={data.status || ''}
                            error={!!validation.get('status')}
                            helperText={validation.get('status')}
                            onChange={(event) => storeDiff('status', event.target.value as EdemokraciaDebateStatus)}
                            className={false || !editMode ? 'Mui-readOnly' : undefined}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
                              readOnly: false || !editMode,
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="list" />
                                </InputAdornment>
                              ),
                            }}
                            select
                          >
                            <MenuItem value={'CREATED'}>
                              {t('enumerations.EdemokraciaDebateStatus.CREATED', { defaultValue: 'CREATED' })}
                            </MenuItem>
                            <MenuItem value={'PENDING'}>
                              {t('enumerations.EdemokraciaDebateStatus.PENDING', { defaultValue: 'PENDING' })}
                            </MenuItem>
                            <MenuItem value={'ACTIVE'}>
                              {t('enumerations.EdemokraciaDebateStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                            </MenuItem>
                            <MenuItem value={'CLOSED'}>
                              {t('enumerations.EdemokraciaDebateStatus.CLOSED', { defaultValue: 'CLOSED' })}
                            </MenuItem>
                          </TextField>
                        </Grid>

                        <Grid item xs={12} sm={12} md={2.0}>
                          <DateTimePicker
                            renderInput={(props: any) => (
                              <TextField
                                required
                                {...props}
                                error={!!validation.get('closeAt')}
                                helperText={validation.get('closeAt')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.closeAt', {
                                defaultValue: 'Close at',
                              }) as string
                            }
                            value={data.closeAt ?? null}
                            className={false || !editMode ? 'Mui-readOnly' : undefined}
                            readOnly={false || !editMode}
                            onChange={(newValue: any) => storeDiff('closeAt', newValue)}
                            InputProps={{
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="schedule" />
                                </InputAdornment>
                              ),
                            }}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={8.0}>
                          <AggregationInput
                            name="issue"
                            id="Link@edemokracia/admin/Admin/edemokracia/admin/Dashboard.debates/View/default/Debate_View/debate/LabelWrapper/debate/issue"
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.issue', {
                                defaultValue: 'Issue',
                              }) as string
                            }
                            labelList={[data.issue?.representation?.toString() ?? '']}
                            value={data.issue}
                            error={!!validation.get('issue')}
                            helperText={validation.get('issue')}
                            icon={<MdiIcon path="file-document" />}
                            readonly={true || !editMode}
                            onView={async () => linkViewIssueAction(data?.issue!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <AggregationInput
                            name="createdBy"
                            id="Link@edemokracia/admin/Admin/edemokracia/admin/Dashboard.debates/View/default/Debate_View/debate/LabelWrapper/debate/createdBy"
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.createdBy', {
                                defaultValue: 'Created by',
                              }) as string
                            }
                            labelList={[data.createdBy?.representation?.toString() ?? '']}
                            value={data.createdBy}
                            error={!!validation.get('createdBy')}
                            helperText={validation.get('createdBy')}
                            icon={<MdiIcon path="account" />}
                            readonly={true || !editMode}
                            onView={async () => linkViewCreatedByAction(data?.createdBy!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="description"
                            id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Dashboard.debates/View/default/Debate_View/debate/LabelWrapper/debate/description"
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.description', {
                                defaultValue: 'Description',
                              }) as string
                            }
                            value={data.description}
                            multiline
                            minRows={4.0}
                            error={!!validation.get('description')}
                            helperText={validation.get('description')}
                            onChange={(event) => storeDiff('description', event.target.value)}
                            className={false || !editMode ? 'Mui-readOnly' : undefined}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
                              readOnly: false || !editMode,
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="text_fields" />
                                </InputAdornment>
                              ),
                            }}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <AggregationInput
                            name="voteDefinition"
                            id="Link@edemokracia/admin/Admin/edemokracia/admin/Dashboard.debates/View/default/Debate_View/debate/LabelWrapper/debate/voteDefinition"
                            label={
                              t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.voteDefinition', {
                                defaultValue: 'VoteDefinition',
                              }) as string
                            }
                            labelList={[
                              data.voteDefinition?.title?.toString() ?? '',
                              data.voteDefinition?.created?.toString() ?? '',
                              data.voteDefinition?.status?.toString() ?? '',
                              data.voteDefinition?.closeAt?.toString() ?? '',
                            ]}
                            value={data.voteDefinition}
                            error={!!validation.get('voteDefinition')}
                            helperText={validation.get('voteDefinition')}
                            icon={<MdiIcon path="table_rows" />}
                            readonly={true || !editMode}
                            onView={async () => linkViewVoteDefinitionAction(data?.voteDefinition!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            onClick={() => AdminDebateCloseDebateAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="wechat" />
                            {t('edemokracia.admin.Dashboard.debates.Debate.View.debate.debate.closeDebate', {
                              defaultValue: 'Close debate',
                            })}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid container item xs={12} sm={12}>
              <ModeledTabs
                activeIndex={0}
                childTabs={[
                  {
                    id: 'arguments',
                    name: 'arguments',
                    label: 'Arguments',
                  },
                  {
                    id: 'comments',
                    name: 'comments',
                    label: 'Comments',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            onClick={() => AdminDebateCreateArgumentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="account-voice" />
                            {t(
                              'edemokracia.admin.Dashboard.debates.Debate.View.tabBar.arguments.arguments.actions.createArgument',
                              { defaultValue: 'Add argument' },
                            )}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12} md={6.0}>
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                            <MdiIcon path="chat-plus" />
                            <Typography variant="h6" component="h1">
                              {t(
                                'edemokracia.admin.Dashboard.debates.Debate.View.tabBar.arguments.arguments.pros.pros.Label',
                                { defaultValue: 'Pro' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.pros ?? []}
                              columns={[
                                ...prosColumns,
                                ...columnsActionCalculator(prosRowActions, { shownActions: 2 }),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminProStored>) => rowViewProsAction(params.row)}
                              sortModel={prosSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setProsSortModel(newModel);
                              }}
                              components={{
                                Toolbar: () => <div>{/* No actions defined */}</div>,
                              }}
                            />
                          </Grid>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12} md={6.0}>
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                            <MdiIcon path="chat-minus" />
                            <Typography variant="h6" component="h1">
                              {t(
                                'edemokracia.admin.Dashboard.debates.Debate.View.tabBar.arguments.arguments.cons.cons.Label',
                                { defaultValue: 'Contra' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.cons ?? []}
                              columns={[
                                ...consColumns,
                                ...columnsActionCalculator(consRowActions, { shownActions: 2 }),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminConStored>) => rowViewConsAction(params.row)}
                              sortModel={consSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setConsSortModel(newModel);
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

                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            onClick={() => AdminDebateCreateCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t(
                              'edemokracia.admin.Dashboard.debates.Debate.View.tabBar.comments.comments.actions.createComment',
                              { defaultValue: 'Add comment' },
                            )}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.comments ?? []}
                              columns={[
                                ...commentsColumns,
                                ...columnsActionCalculator(commentsRowActions, { shownActions: 2 }),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminCommentStored>) =>
                                rowViewCommentsAction(params.row)
                              }
                              sortModel={commentsSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setCommentsSortModel(newModel);
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
