///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.pros#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: pros
// Page DataElement owner name: edemokracia::admin::Debate

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
  AdminProMaskBuilder,
  AdminCon,
  AdminConStored,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminProStored,
  AdminProQueryCustomizer,
  AdminDebate,
  AdminCommentMaskBuilder,
  AdminConQueryCustomizer,
  AdminComment,
  AdminDebateStored,
  AdminUser,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminDebateServiceImpl, adminProServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminDebateProsView } from './hooks/useAdminDebateProsView';
import {
  usePageDeleteProsAction,
  useAdminProVoteUpAction,
  usePageRefreshProsAction,
  usePageBackProsAction,
  useAdminProCreateCommentAction,
  useRowDeleteProsAction,
  useAdminConCreateSubArgumentAction,
  useRowEditProsAction,
  useButtonNavigateVotesAction,
  usePageEditProsAction,
  useAdminConVoteDownAction,
  useAdminConVoteUpAction,
  useLinkViewCreatedByAction,
  useRowViewCommentsAction,
  useAdminConCreateCommentAction,
  useRowDeleteConsAction,
  useRowEditConsAction,
  useRowViewProsAction,
  useAdminCommentVoteUpAction,
  useAdminProVoteDownAction,
  useRowViewConsAction,
  useAdminCommentVoteDownAction,
  useAdminProCreateSubArgumentAction,
} from './actions';

/**
 * Name: edemokracia::admin::Debate.pros#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminDebateProsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageDeleteProsAction = usePageDeleteProsAction();
  const adminProVoteUpAction = useAdminProVoteUpAction();
  const pageRefreshProsAction = usePageRefreshProsAction();
  const pageBackProsAction = usePageBackProsAction();
  const adminProCreateCommentAction = useAdminProCreateCommentAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const adminConCreateSubArgumentAction = useAdminConCreateSubArgumentAction();
  const rowEditProsAction = useRowEditProsAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const pageEditProsAction = usePageEditProsAction();
  const adminConVoteDownAction = useAdminConVoteDownAction();
  const adminConVoteUpAction = useAdminConVoteUpAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const adminConCreateCommentAction = useAdminConCreateCommentAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const rowEditConsAction = useRowEditConsAction();
  const rowViewProsAction = useRowViewProsAction();
  const adminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const adminProVoteDownAction = useAdminProVoteDownAction();
  const rowViewConsAction = useRowViewConsAction();
  const adminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const adminProCreateSubArgumentAction = useAdminProCreateSubArgumentAction();

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
  } = useAdminDebateProsView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminProStored>({} as unknown as AdminProStored);
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

  const consRowActions: TableRowAction<AdminConStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminConStored) => rowDeleteConsAction(data, row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Con.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => adminConVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Con.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => adminConVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => adminConCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Con.createComment', {
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
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Pro.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => adminProVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Pro.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => adminProVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => adminProCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => adminProCreateCommentAction(row, () => fetchData()),
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => adminCommentVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Debate.pros.View.edemokracia.admin.Comment.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => adminCommentVoteDownAction(row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.Debate.pros.Pro.View', { defaultValue: 'View / Edit Pro' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminProServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminPro>,
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

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminProServiceImpl.update(payloadDiff);

      if (res) {
        await fetchData();
        setEditMode(false);
      }
    } catch (error) {
      errorHandling(error, enqueueSnackbar, { setValidation });
    } finally {
      setIsLoading(false);
    }
  };

  const deleteData = async () => {
    setIsLoading(true);

    try {
      await adminProServiceImpl.delete(data);

      back();
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
        {!editMode && (
          <Grid item>
            <Button onClick={() => deleteData()} disabled={isLoading}>
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button onClick={() => setEditMode(true)} disabled={isLoading}>
              <MdiIcon path="pencil" />
              {t('judo.pages.edit', { defaultValue: 'Edit' })}
            </Button>
          </Grid>
        )}
        {editMode && (
          <Grid item>
            <Button
              variant="outlined"
              onClick={() => {
                setEditMode(false);
                fetchData();
              }}
              disabled={isLoading}
            >
              <MdiIcon path="cancel" />
              {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
            </Button>
          </Grid>
        )}
        {editMode && (
          <Grid item>
            <Button onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
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
                  <MdiIcon path="chat-plus" />
                  <Typography variant="h6" component="h1">
                    {t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.Label', { defaultValue: 'Pro' })}
                  </Typography>
                </Grid>

                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={6.0}>
                    <TextField
                      name="title"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Debate.pros/View/default/Pro_View/pro/LabelWrapper/pro/title"
                      label={
                        t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.title', { defaultValue: 'Title' }) as string
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

                  <Grid item xs={12} sm={3.0}>
                    <DateTimePicker
                      renderInput={(props: any) => (
                        <TextField
                          {...props}
                          error={!!validation.get('created')}
                          helperText={validation.get('created')}
                        />
                      )}
                      label={
                        t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.created', {
                          defaultValue: 'Created',
                        }) as string
                      }
                      value={data.created ?? null}
                      className={false || !editMode ? 'Mui-readOnly' : undefined}
                      readOnly={false || !editMode}
                      onChange={(newValue: any) => storeDiff('created', newValue)}
                      InputProps={{
                        startAdornment: (
                          <InputAdornment position="start">
                            <MdiIcon path="schedule" />
                          </InputAdornment>
                        ),
                      }}
                    />
                  </Grid>

                  <Grid item xs={12} sm={3.0}>
                    <AggregationInput
                      name="createdBy"
                      id="Link@edemokracia/admin/Admin/edemokracia/admin/Debate.pros/View/default/Pro_View/pro/LabelWrapper/pro/createdBy"
                      label={
                        t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.createdBy', {
                          defaultValue: 'Created by',
                        }) as string
                      }
                      labelList={[data.createdBy?.representation?.toString() ?? '']}
                      value={data.createdBy}
                      error={!!validation.get('createdBy')}
                      helperText={validation.get('createdBy')}
                      icon={<MdiIcon path="table_rows" />}
                      readonly={true || !editMode}
                      onView={async () => linkViewCreatedByAction(data?.createdBy!)}
                    />
                  </Grid>

                  <Grid item xs={12}>
                    <TextField
                      name="description"
                      id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Debate.pros/View/default/Pro_View/pro/LabelWrapper/pro/description"
                      label={
                        t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.description', {
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

                  <Grid item xs={12} sm={1.0}>
                    <Button
                      onClick={() => adminProVoteUpAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="thumb-up" />
                      {t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.voteUp', { defaultValue: '' })}
                    </Button>
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    <TextField
                      name="upVotes"
                      id="NumericInput@edemokracia/admin/Admin/edemokracia/admin/Debate.pros/View/default/Pro_View/pro/LabelWrapper/pro/upVotes"
                      label={
                        t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.upVotes', { defaultValue: '' }) as string
                      }
                      type="number"
                      value={data.upVotes}
                      error={!!validation.get('upVotes')}
                      helperText={validation.get('upVotes')}
                      onChange={(event) => storeDiff('upVotes', Number(event.target.value))}
                      className={true || !editMode ? 'Mui-readOnly' : undefined}
                      InputLabelProps={{ shrink: true }}
                      InputProps={{
                        readOnly: true || !editMode,
                      }}
                    />
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    TODO: implement spacer
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    <Button
                      onClick={() => adminProVoteDownAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="thumb-down" />
                      {t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.voteDown', { defaultValue: '' })}
                    </Button>
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    <TextField
                      name="downVotes"
                      id="NumericInput@edemokracia/admin/Admin/edemokracia/admin/Debate.pros/View/default/Pro_View/pro/LabelWrapper/pro/downVotes"
                      label={
                        t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.downVotes', { defaultValue: '' }) as string
                      }
                      type="number"
                      value={data.downVotes}
                      error={!!validation.get('downVotes')}
                      helperText={validation.get('downVotes')}
                      onChange={(event) => storeDiff('downVotes', Number(event.target.value))}
                      className={true || !editMode ? 'Mui-readOnly' : undefined}
                      InputLabelProps={{ shrink: true }}
                      InputProps={{
                        readOnly: true || !editMode,
                      }}
                    />
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    TODO: implement spacer
                  </Grid>

                  <Grid item xs={12} sm={2.0}>
                    <Button onClick={() => buttonNavigateVotesAction(data)} disabled={isLoading || editMode}>
                      <MdiIcon path="checkbox-multiple-marked" />
                      {t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.votes', { defaultValue: 'Votes' })}
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
                        onClick={() => adminProCreateSubArgumentAction(data, () => fetchData())}
                        disabled={isLoading || editMode}
                      >
                        <MdiIcon path="account-voice" />
                        {t(
                          'edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.actions.createSubArgument',
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
                        {t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.Label', {
                          defaultValue: 'Pros',
                        })}
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
                        {t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.Label', {
                          defaultValue: 'Cons',
                        })}
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
                  <Grid container item xs={12} sm={4.0} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12}>
                      <Button
                        onClick={() => adminProCreateCommentAction(data, () => fetchData())}
                        disabled={isLoading || editMode}
                      >
                        <MdiIcon path="comment-text-multiple" />
                        {t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.actions.createComment', {
                          defaultValue: 'Add comment',
                        })}
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
