///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.issues#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: issues
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
  AdminIssueDebateMaskBuilder,
  AdminIssueDebate,
  AdminIssueStored,
  AdminIssueCategoryMaskBuilder,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminIssueAttachmentStored,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminIssueDebateStored,
  AdminIssueAttachmentQueryCustomizer,
  AdminIssueDebateQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminIssueAttachment,
  AdminIssueCategoryStored,
  AdminCommentMaskBuilder,
  AdminIssue,
  AdminIssueAttachmentMaskBuilder,
  AdminIssueCategory,
  AdminComment,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
  EdemokraciaIssueStatus,
} from '../../../../../generated/data-api';
import { adminAdminServiceForIssuesImpl, adminIssueServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminAdminIssuesView } from './hooks/useAdminAdminIssuesView';
import {
  useRowDeleteAttachmentsAction,
  useAdminIssueCreateCommentAction,
  useRowViewCommentsAction,
  usePageDeleteIssuesAction,
  useRowViewDebatesAction,
  usePageRefreshIssuesAction,
  useLinkViewOwnerAction,
  usePageEditIssuesAction,
  useAdminCommentVoteUpAction,
  useTableCreateAttachmentsAction,
  useRowViewCategoriesAction,
  useRowEditAttachmentsAction,
  useRowViewAttachmentsAction,
  useAdminIssueCreateDebateAction,
  useAdminCommentVoteDownAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.issues#View
 * Is Access: true
 * Is Dashboard: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminAdminIssuesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const rowDeleteAttachmentsAction = useRowDeleteAttachmentsAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const pageDeleteIssuesAction = usePageDeleteIssuesAction();
  const rowViewDebatesAction = useRowViewDebatesAction();
  const pageRefreshIssuesAction = usePageRefreshIssuesAction();
  const linkViewOwnerAction = useLinkViewOwnerAction();
  const pageEditIssuesAction = usePageEditIssuesAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const tableCreateAttachmentsAction = useTableCreateAttachmentsAction();
  const rowViewCategoriesAction = useRowViewCategoriesAction();
  const rowEditAttachmentsAction = useRowEditAttachmentsAction();
  const rowViewAttachmentsAction = useRowViewAttachmentsAction();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const {
    queryCustomizer,
    attachmentsColumns,
    attachmentsRangeFilterOptions,
    attachmentsInitialQueryCustomizer,
    categoriesColumns,
    categoriesRangeFilterOptions,
    categoriesInitialQueryCustomizer,
    commentsColumns,
    commentsRangeFilterOptions,
    commentsInitialQueryCustomizer,
    debatesColumns,
    debatesRangeFilterOptions,
    debatesInitialQueryCustomizer,
    ownerColumns,
    ownerRangeFilterOptions,
    ownerInitialQueryCustomizer,
  } = useAdminAdminIssuesView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueStored>({} as unknown as AdminIssueStored);
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
  const [attachmentsSortModel, setAttachmentsSortModel] = useState<GridSortModel>([{ field: 'link', sort: 'asc' }]);
  const [categoriesSortModel, setCategoriesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'comment', sort: 'asc' }]);
  const [debatesSortModel, setDebatesSortModel] = useState<GridSortModel>([{ field: 'status', sort: 'asc' }]);

  const attachmentsRowActions: TableRowAction<AdminIssueAttachmentStored>[] = [
    {
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueAttachmentStored) => rowDeleteAttachmentsAction(data, row, () => fetchData()),
      disabled: (row: AdminIssueAttachmentStored) => !row.__deleteable,
    },
  ];
  const categoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      label: t('edemokracia.admin.Admin.issues.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
    },
    {
      label: t('edemokracia.admin.Admin.issues.View.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
    },
  ];
  const debatesRowActions: TableRowAction<AdminIssueDebateStored>[] = [];
  const title: string = t('edemokracia.admin.Admin.issues.View', { defaultValue: 'View / Edit Issue' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as AdminIssueStored,
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
      const res = await adminIssueServiceImpl.update(payloadDiff);

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
      await adminIssueServiceImpl.delete(data as AdminIssueStored);

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
            <Button onClick={() => deleteData()} disabled={isLoading || !data.__deleteable}>
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button onClick={() => setEditMode(true)} disabled={isLoading || !data.__updateable}>
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
                        <MdiIcon path="clipboard" />
                        <Typography variant="h6" component="h1">
                          {t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.Label', { defaultValue: 'Issue' })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            required
                            name="title"
                            id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Admin.issues/View/default/Issue_View/issue/LabelWrapper/issue/title"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.title', {
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

                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            required
                            name="status"
                            id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Admin.issues/View/default/Issue_View/issue/LabelWrapper/issue/status"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.status', {
                                defaultValue: 'Status',
                              }) as string
                            }
                            value={data.status || ''}
                            error={!!validation.get('status')}
                            helperText={validation.get('status')}
                            onChange={(event) => storeDiff('status', event.target.value as EdemokraciaIssueStatus)}
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
                              {t('enumerations.EdemokraciaIssueStatus.CREATED', { defaultValue: 'CREATED' })}
                            </MenuItem>
                            <MenuItem value={'PENDING'}>
                              {t('enumerations.EdemokraciaIssueStatus.PENDING', { defaultValue: 'PENDING' })}
                            </MenuItem>
                            <MenuItem value={'ACTIVE'}>
                              {t('enumerations.EdemokraciaIssueStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                            </MenuItem>
                            <MenuItem value={'CLOSED'}>
                              {t('enumerations.EdemokraciaIssueStatus.CLOSED', { defaultValue: 'CLOSED' })}
                            </MenuItem>
                          </TextField>
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <DateTimePicker
                            renderInput={(props: any) => (
                              <TextField
                                {...props}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={data.created ?? null}
                            className={true || !editMode ? 'Mui-readOnly' : undefined}
                            readOnly={true || !editMode}
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

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="description"
                            id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Admin.issues/View/default/Issue_View/issue/LabelWrapper/issue/description"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.description', {
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

                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            onClick={() => AdminIssueCreateDebateAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="wechat" />
                            {t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.createDebate', {
                              defaultValue: 'Create debate',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <AggregationInput
                            name="owner"
                            id="Link@edemokracia/admin/Admin/edemokracia/admin/Admin.issues/View/default/Issue_View/issue/LabelWrapper/issue/owner"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.owner', {
                                defaultValue: 'Owner',
                              }) as string
                            }
                            labelList={[data.owner?.representation?.toString() ?? '']}
                            value={data.owner}
                            error={!!validation.get('owner')}
                            helperText={validation.get('owner')}
                            icon={<MdiIcon path="account" />}
                            readonly={false || !editMode}
                            onView={async () => linkViewOwnerAction(data?.owner!)}
                          />
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
                    id: 'attachments',
                    name: 'attachments',
                    label: 'Attachments',
                  },
                  {
                    id: 'categories',
                    name: 'categories',
                    label: 'Categories',
                  },
                  {
                    id: 'debates',
                    name: 'debates',
                    label: 'Debates',
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
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.attachments ?? []}
                              columns={[
                                ...attachmentsColumns,
                                ...columnsActionCalculator(attachmentsRowActions, { shownActions: 2 }),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueAttachmentStored>) =>
                                rowViewAttachmentsAction(params.row)
                              }
                              sortModel={attachmentsSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setAttachmentsSortModel(newModel);
                              }}
                              components={{
                                Toolbar: () => (
                                  <GridToolbarContainer>
                                    <Button
                                      onClick={() => tableCreateAttachmentsAction(data, () => fetchData())}
                                      disabled={isLoading || editMode}
                                    >
                                      <MdiIcon path="note_add" />
                                      {t('judo.pages.table.create', { defaultValue: 'Create' })}
                                    </Button>
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
                  <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="column" alignItems="stretch" justifyContent="flex-start">
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.categories ?? []}
                              columns={[
                                ...categoriesColumns,
                                ...columnsActionCalculator(categoriesRowActions, { shownActions: 2 }),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueCategoryStored>) =>
                                rowViewCategoriesAction(params.row)
                              }
                              sortModel={categoriesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setCategoriesSortModel(newModel);
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
                              onRowClick={(params: GridRowParams<AdminIssueDebateStored>) =>
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

                <Grid item xs={12} sm={12}>
                  <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            onClick={() => AdminIssueCreateCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t(
                              'edemokracia.admin.Admin.issues.Issue.View.other.comments.comments.actions.createComment',
                              { defaultValue: 'Add comment' },
                            )}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                            spacing={2}
                          >
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
