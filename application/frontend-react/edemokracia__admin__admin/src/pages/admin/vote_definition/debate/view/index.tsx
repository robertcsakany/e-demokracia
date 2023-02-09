///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::VoteDefinition.debate#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: debate
// Page DataElement owner name: edemokracia::admin::VoteDefinition

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
  AdminDebateQueryCustomizer,
  AdminIssueMaskBuilder,
  AdminVoteDefinitionQueryCustomizer,
  AdminProMaskBuilder,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminPro,
  AdminVoteDefinitionStored,
  EdemokraciaDebateStatus,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminVoteDefinitionServiceImpl, adminDebateServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminVoteDefinitionDebateView } from './hooks/useAdminVoteDefinitionDebateView';
import {
  useAdminProVoteUpAction,
  usePageRefreshDebateAction,
  useAdminCommentVoteUpAction,
  useRowViewCommentsAction,
  useRowDeleteCommentsAction,
  useRowEditConsAction,
  useAdminProCreateSubArgumentAction,
  useAdminCommentVoteDownAction,
  useLinkViewIssueAction,
  useRowViewConsAction,
  useAdminConVoteDownAction,
  useAdminConVoteUpAction,
  useAdminProCreateCommentAction,
  useRowDeleteProsAction,
  useRowEditCommentsAction,
  useAdminConCreateCommentAction,
  useLinkViewVoteDefinitionAction,
  useAdminConCreateSubArgumentAction,
  useLinkViewCreatedByAction,
  useRowDeleteConsAction,
  useAdminDebateCreateArgumentAction,
  usePageBackDebateAction,
  useRowEditProsAction,
  useAdminDebateCreateCommentAction,
  useRowViewProsAction,
  useAdminDebateCloseDebateAction,
  useAdminProVoteDownAction,
} from './actions';

/**
 * Name: edemokracia::admin::VoteDefinition.debate#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminVoteDefinitionDebateView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const adminProVoteUpAction = useAdminProVoteUpAction();
  const pageRefreshDebateAction = usePageRefreshDebateAction();
  const adminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const rowDeleteCommentsAction = useRowDeleteCommentsAction();
  const rowEditConsAction = useRowEditConsAction();
  const adminProCreateSubArgumentAction = useAdminProCreateSubArgumentAction();
  const adminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const linkViewIssueAction = useLinkViewIssueAction();
  const rowViewConsAction = useRowViewConsAction();
  const adminConVoteDownAction = useAdminConVoteDownAction();
  const adminConVoteUpAction = useAdminConVoteUpAction();
  const adminProCreateCommentAction = useAdminProCreateCommentAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const rowEditCommentsAction = useRowEditCommentsAction();
  const adminConCreateCommentAction = useAdminConCreateCommentAction();
  const linkViewVoteDefinitionAction = useLinkViewVoteDefinitionAction();
  const adminConCreateSubArgumentAction = useAdminConCreateSubArgumentAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const adminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();
  const pageBackDebateAction = usePageBackDebateAction();
  const rowEditProsAction = useRowEditProsAction();
  const adminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const rowViewProsAction = useRowViewProsAction();
  const adminDebateCloseDebateAction = useAdminDebateCloseDebateAction();
  const adminProVoteDownAction = useAdminProVoteDownAction();

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
    createdByColumns,
    createdByRangeFilterOptions,
    createdByInitialQueryCustomizer,
    issueColumns,
    issueRangeFilterOptions,
    issueInitialQueryCustomizer,
    voteDefinitionColumns,
    voteDefinitionRangeFilterOptions,
    voteDefinitionInitialQueryCustomizer,
  } = useAdminVoteDefinitionDebateView();

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
  const [createdBySortModel, setCreatedBySortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);
  const [issueSortModel, setIssueSortModel] = useState<GridSortModel>([{ field: 'representation', sort: 'asc' }]);
  const [voteDefinitionSortModel, setVoteDefinitionSortModel] = useState<GridSortModel>([
    { field: 'title', sort: 'asc' },
  ]);

  const consRowActions: TableRowAction<AdminConStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminConStored) => rowDeleteConsAction(data, row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => adminConVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => adminConVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => adminConCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminConStored) => adminConCreateCommentAction(row, () => fetchData()),
    },
  ];
  const prosRowActions: TableRowAction<AdminProStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminProStored) => rowDeleteProsAction(data, row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => adminProVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => adminProVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => adminProCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => adminProCreateCommentAction(row, () => fetchData()),
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminCommentStored) => rowDeleteCommentsAction(data, row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Comment.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => adminCommentVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => adminCommentVoteDownAction(row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.VoteDefinition.debate.Debate.View', {
    defaultValue: 'View / Edit Debate',
  });

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
          <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
            <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
              <Card>
                <Grid container item alignItems="center" justifyContent="flex-start">
                  <MdiIcon path="wechat" />
                  <Typography variant="h6" component="h1">
                    {t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.Label', {
                      defaultValue: 'Debate',
                    })}
                  </Typography>
                </Grid>

                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={8.0}>
                    <TextField
                      name="title"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/VoteDefinition.debate/View/default/Debate_View/debate/LabelWrapper/debate/title"
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.title', {
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

                  <Grid item xs={12} sm={2.0}>
                    <TextField
                      name="status"
                      id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/VoteDefinition.debate/View/default/Debate_View/debate/LabelWrapper/debate/status"
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.status', {
                          defaultValue: 'Status',
                        }) as string
                      }
                      select
                      value={data.status}
                      error={!!validation.get('status')}
                      helperText={validation.get('status')}
                      onChange={(event) => {
                        storeDiff('status', event.target.value as EdemokraciaDebateStatus);
                      }}
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

                  <Grid item xs={12} sm={2.0}>
                    <DateTimePicker
                      renderInput={(props: any) => (
                        <TextField
                          {...props}
                          error={!!validation.get('closeAt')}
                          helperText={validation.get('closeAt')}
                        />
                      )}
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.closeAt', {
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

                  <Grid item xs={12} sm={8.0}>
                    <AggregationInput
                      name="issue"
                      id="Link@edemokracia/admin/Admin/edemokracia/admin/VoteDefinition.debate/View/default/Debate_View/debate/LabelWrapper/debate/issue"
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.issue', {
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

                  <Grid item xs={12} sm={4.0}>
                    <AggregationInput
                      name="createdBy"
                      id="Link@edemokracia/admin/Admin/edemokracia/admin/VoteDefinition.debate/View/default/Debate_View/debate/LabelWrapper/debate/createdBy"
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.createdBy', {
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

                  <Grid item xs={12}>
                    <TextField
                      name="description"
                      id="TextArea@edemokracia/admin/Admin/edemokracia/admin/VoteDefinition.debate/View/default/Debate_View/debate/LabelWrapper/debate/description"
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.description', {
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

                  <Grid item xs={12}>
                    <AggregationInput
                      name="voteDefinition"
                      id="Link@edemokracia/admin/Admin/edemokracia/admin/VoteDefinition.debate/View/default/Debate_View/debate/LabelWrapper/debate/voteDefinition"
                      label={
                        t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.voteDefinition', {
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

                  <Grid item xs={12} sm={4.0}>
                    <Button
                      onClick={() => adminDebateCloseDebateAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="wechat" />
                      {t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.closeDebate', {
                        defaultValue: 'Close debate',
                      })}
                    </Button>
                  </Grid>
                </Grid>
              </Card>
            </Grid>

            <Grid container item>
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
                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={4.0}>
                      <Button
                        onClick={() => adminDebateCreateArgumentAction(data, () => fetchData())}
                        disabled={isLoading || editMode}
                      >
                        <MdiIcon path="account-voice" />
                        {t(
                          'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.actions.createArgument',
                          { defaultValue: 'Add argument' },
                        )}
                      </Button>
                    </Grid>
                  </Grid>

                  <Grid
                    container
                    item
                    xs={12}
                    sm={6.0}
                    direction="column"
                    alignItems="stretch"
                    justifyContent="flex-start"
                  >
                    <Grid container item alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="chat-plus" />
                      <Typography variant="h6" component="h1">
                        {t(
                          'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.Label',
                          { defaultValue: 'Pro' },
                        )}
                      </Typography>
                    </Grid>

                    <Grid item>
                      <DataGrid
                        {...baseTableConfig}
                        getRowId={(row: { __identifier: string }) => row.__identifier}
                        loading={isLoading}
                        rows={data?.pros ?? []}
                        columns={[...prosColumns, ...columnsActionCalculator(prosRowActions, { shownActions: 2 })]}
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

                  <Grid
                    container
                    item
                    xs={12}
                    sm={6.0}
                    direction="column"
                    alignItems="stretch"
                    justifyContent="flex-start"
                  >
                    <Grid container item alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="chat-minus" />
                      <Typography variant="h6" component="h1">
                        {t(
                          'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.Label',
                          { defaultValue: 'Contra' },
                        )}
                      </Typography>
                    </Grid>

                    <Grid item>
                      <DataGrid
                        {...baseTableConfig}
                        getRowId={(row: { __identifier: string }) => row.__identifier}
                        loading={isLoading}
                        rows={data?.cons ?? []}
                        columns={[...consColumns, ...columnsActionCalculator(consRowActions, { shownActions: 2 })]}
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

                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={4.0}>
                      <Button
                        onClick={() => adminDebateCreateCommentAction(data, () => fetchData())}
                        disabled={isLoading || editMode}
                      >
                        <MdiIcon path="comment-text-multiple" />
                        {t(
                          'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.actions.createComment',
                          { defaultValue: 'Add comment' },
                        )}
                      </Button>
                    </Grid>
                  </Grid>

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
                        rows={data?.comments ?? []}
                        columns={[
                          ...commentsColumns,
                          ...columnsActionCalculator(commentsRowActions, { shownActions: 2 }),
                        ]}
                        disableSelectionOnClick
                        onRowClick={(params: GridRowParams<AdminCommentStored>) => rowViewCommentsAction(params.row)}
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
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
