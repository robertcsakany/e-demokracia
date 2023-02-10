///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Con.cons#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: cons
// Page DataElement owner name: edemokracia::admin::Con

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
  Divider,
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
  AdminProMaskBuilder,
  AdminCon,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminPro,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminProStored,
  AdminProQueryCustomizer,
  AdminCommentMaskBuilder,
  AdminConQueryCustomizer,
  AdminComment,
  AdminUser,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminConServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminConConsView } from './hooks/useAdminConConsView';
import {
  usePageRefreshConsAction,
  usePageDeleteConsAction,
  useAdminCommentVoteDownAction,
  useRowDeleteConsAction,
  useAdminProCreateSubArgumentAction,
  useLinkViewCreatedByAction,
  useAdminProCreateCommentAction,
  usePageEditConsAction,
  useRowViewConsAction,
  useRowEditConsAction,
  useButtonNavigateVotesAction,
  useAdminCommentVoteUpAction,
  useVoteDownAction,
  useRowViewCommentsAction,
  useRowEditProsAction,
  useAdminProVoteUpAction,
  useCreateCommentAction,
  useVoteUpAction,
  useAdminProVoteDownAction,
  useRowDeleteProsAction,
  useCreateSubArgumentAction,
  useRowViewProsAction,
} from './actions';

/**
 * Name: edemokracia::admin::Con.cons#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminConConsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshConsAction = usePageRefreshConsAction();
  const pageDeleteConsAction = usePageDeleteConsAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const AdminProCreateSubArgumentAction = useAdminProCreateSubArgumentAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const AdminProCreateCommentAction = useAdminProCreateCommentAction();
  const pageEditConsAction = usePageEditConsAction();
  const rowViewConsAction = useRowViewConsAction();
  const rowEditConsAction = useRowEditConsAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const voteDownAction = useVoteDownAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const rowEditProsAction = useRowEditProsAction();
  const AdminProVoteUpAction = useAdminProVoteUpAction();
  const createCommentAction = useCreateCommentAction();
  const voteUpAction = useVoteUpAction();
  const AdminProVoteDownAction = useAdminProVoteDownAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const createSubArgumentAction = useCreateSubArgumentAction();
  const rowViewProsAction = useRowViewProsAction();

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
  } = useAdminConConsView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminConStored>({} as unknown as AdminConStored);
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
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Con.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => voteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Con.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => voteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => createSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Con.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminConStored) => createCommentAction(row, () => fetchData()),
    },
  ];
  const prosRowActions: TableRowAction<AdminProStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminProStored) => rowDeleteProsAction(data, row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Pro.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => AdminProVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Pro.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => AdminProVoteDownAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => AdminProCreateSubArgumentAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => AdminProCreateCommentAction(row, () => fetchData()),
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Con.cons.View.edemokracia.admin.Comment.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
    },
  ];
  const title: string = t('edemokracia.admin.Con.cons.View', { defaultValue: 'View / Edit Con' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminConServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminCon>,
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
      const res = await adminConServiceImpl.update(payloadDiff);

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
      await adminConServiceImpl.delete(data);

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
                  <MdiIcon path="chat-minus" />
                  <Typography variant="h6" component="h1">
                    {t('edemokracia.admin.Con.cons.Con.View.con.con.Label', { defaultValue: 'Contra' })}
                  </Typography>
                </Grid>

                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={6.0}>
                    <TextField
                      name="title"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Con.cons/View/default/Con_View/con/LabelWrapper/con/title"
                      label={
                        t('edemokracia.admin.Con.cons.Con.View.con.con.title', { defaultValue: 'Title' }) as string
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
                        t('edemokracia.admin.Con.cons.Con.View.con.con.created', { defaultValue: 'Created' }) as string
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
                      id="Link@edemokracia/admin/Admin/edemokracia/admin/Con.cons/View/default/Con_View/con/LabelWrapper/con/createdBy"
                      label={
                        t('edemokracia.admin.Con.cons.Con.View.con.con.createdBy', {
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
                      id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Con.cons/View/default/Con_View/con/LabelWrapper/con/description"
                      label={
                        t('edemokracia.admin.Con.cons.Con.View.con.con.description', {
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
                    <Button onClick={() => voteUpAction(data, () => fetchData())} disabled={isLoading || editMode}>
                      <MdiIcon path="thumb-up" />
                      {t('edemokracia.admin.Con.cons.Con.View.con.con.voteUp', { defaultValue: '' })}
                    </Button>
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    <TextField
                      name="upVotes"
                      id="NumericInput@edemokracia/admin/Admin/edemokracia/admin/Con.cons/View/default/Con_View/con/LabelWrapper/con/upVotes"
                      label={t('edemokracia.admin.Con.cons.Con.View.con.con.upVotes', { defaultValue: '' }) as string}
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
                    <Grid container sx={{ height: dividerHeight }}></Grid>
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    <Button onClick={() => voteDownAction(data, () => fetchData())} disabled={isLoading || editMode}>
                      <MdiIcon path="thumb-down" />
                      {t('edemokracia.admin.Con.cons.Con.View.con.con.voteDown', { defaultValue: '' })}
                    </Button>
                  </Grid>

                  <Grid item xs={12} sm={1.0}>
                    <TextField
                      name="downVotes"
                      id="NumericInput@edemokracia/admin/Admin/edemokracia/admin/Con.cons/View/default/Con_View/con/LabelWrapper/con/downVotes"
                      label={t('edemokracia.admin.Con.cons.Con.View.con.con.downVotes', { defaultValue: '' }) as string}
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
                    <Grid container sx={{ height: dividerHeight }}></Grid>
                  </Grid>

                  <Grid item xs={12} sm={2.0}>
                    <Button onClick={() => buttonNavigateVotesAction(data)} disabled={isLoading || editMode}>
                      <MdiIcon path="checkbox-multiple-marked" />
                      {t('edemokracia.admin.Con.cons.Con.View.con.con.votes', { defaultValue: 'Votes' })}
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
                        onClick={() => createSubArgumentAction(data, () => fetchData())}
                        disabled={isLoading || editMode}
                      >
                        <MdiIcon path="account-voice" />
                        {t('edemokracia.admin.Con.cons.Con.View.tabBar.arguments.arguments.actions.createSubArgument', {
                          defaultValue: 'Add argument',
                        })}
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
                        {t('edemokracia.admin.Con.cons.Con.View.tabBar.arguments.arguments.pros.pros.Label', {
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
                        {t('edemokracia.admin.Con.cons.Con.View.tabBar.arguments.arguments.cons.cons.Label', {
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
                        onClick={() => createCommentAction(data, () => fetchData())}
                        disabled={isLoading || editMode}
                      >
                        <MdiIcon path="comment-text-multiple" />
                        {t('edemokracia.admin.Con.cons.Con.View.tabBar.comments.comments.actions.createComment', {
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
