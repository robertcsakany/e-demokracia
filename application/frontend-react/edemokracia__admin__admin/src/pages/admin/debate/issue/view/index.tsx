//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.issue#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: issue
// Page DataElement owner name: edemokracia::admin::Debate

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Container,
  Grid,
  Button,
  Card,
  CardContent,
  InputAdornment,
  MenuItem,
  TextField,
  Typography,
} from '@mui/material';
import {
  DataGrid,
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridToolbarContainer,
} from '@mui/x-data-grid';
import { DateTimePicker } from '@mui/x-date-pickers';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import { useSnackbar } from 'notistack';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../../components';
import { useConfirmationBeforeChange } from '../../../../../hooks';
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
  serviceDateToUiDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  AdminIssueDebateMaskBuilder,
  AdminIssueDebate,
  AdminIssueStored,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminIssueDebateQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminIssueCategoryStored,
  AdminCommentMaskBuilder,
  AdminIssueAttachmentMaskBuilder,
  AdminIssueCategory,
  AdminComment,
  AdminDebateStored,
  AdminUser,
  EdemokraciaIssueStatus,
  AdminIssueCategoryMaskBuilder,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminIssueAttachmentStored,
  AdminIssueDebateStored,
  AdminIssueAttachmentQueryCustomizer,
  AdminIssueAttachment,
  AdminDebate,
  AdminIssue,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminDebateServiceImpl, adminIssueServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminDebateIssueView } from './hooks/useAdminDebateIssueView';
import {
  usePageRefreshIssueAction,
  useAdminIssueCreateDebateAction,
  useAdminCommentVoteDownAction,
  useLinkViewOwnerAction,
  useRowViewCommentsAction,
  useRowDeleteAttachmentsAction,
  useRowViewCategoriesAction,
  useTableCreateAttachmentsAction,
  useRowViewAttachmentsAction,
  useAdminCommentVoteUpAction,
  useRowEditAttachmentsAction,
  useRowViewDebatesAction,
  useAdminIssueCreateCommentAction,
} from './actions';

/**
 * Name: edemokracia::admin::Debate.issue#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminDebateIssueView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshIssueAction = usePageRefreshIssueAction();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const linkViewOwnerAction = useLinkViewOwnerAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const rowDeleteAttachmentsAction = useRowDeleteAttachmentsAction();
  const rowViewCategoriesAction = useRowViewCategoriesAction();
  const tableCreateAttachmentsAction = useTableCreateAttachmentsAction();
  const rowViewAttachmentsAction = useRowViewAttachmentsAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const rowEditAttachmentsAction = useRowEditAttachmentsAction();
  const rowViewDebatesAction = useRowViewDebatesAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();

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
  } = useAdminDebateIssueView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueStored>({} as unknown as AdminIssueStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueStored, any>>(
    {} as unknown as Record<keyof AdminIssueStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueStored, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminIssueStored, string>>(new Map());
  const [attachmentsSortModel, setAttachmentsSortModel] = useState<GridSortModel>([{ field: 'link', sort: 'asc' }]);
  const [categoriesSortModel, setCategoriesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const categoriesRangeCall = async () =>
    openRangeDialog<AdminIssueCategoryStored, AdminIssueCategoryQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories',
      columns: categoriesColumns,
      defaultSortField: categoriesSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminIssueServiceImpl.getRangeForCategories(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: categoriesSelectionModel,
      filterOptions: categoriesRangeFilterOptions,
      initialQueryCustomizer: categoriesInitialQueryCustomizer,
    });
  const [categoriesSelectionModel, setCategoriesSelectionModel] = useState<GridSelectionModel>([]);
  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'comment', sort: 'asc' }]);
  const [debatesSortModel, setDebatesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);

  const attachmentsRowActions: TableRowAction<AdminIssueAttachmentStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueAttachmentStored) => rowDeleteAttachmentsAction(data, row, () => fetchData()),
      disabled: (row: AdminIssueAttachmentStored) => editMode || !row.__deleteable,
    },
  ];
  const categoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [
    {
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories-remove',
      label: t('judo.pages.table.remove', { defaultValue: 'Remove' }) as string,
      icon: <MdiIcon path="link_off" />,
      action: async (row: AdminIssueCategoryStored) => {
        setEditMode(true);
        storeDiff('categories', [
          ...(data.categories || []).filter(
            (e: AdminIssueCategoryStored) => e.__signedIdentifier !== row.__signedIdentifier,
          ),
        ]);
      },
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Debate.issue.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Debate.issue.View.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
  ];
  const debatesRowActions: TableRowAction<AdminIssueDebateStored>[] = [];
  const title: string = t('edemokracia.admin.Debate.issue.View', { defaultValue: 'View / Edit Issue' });

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

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminIssue>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof AdminIssueStored, any>);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminIssueStored, string>());
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="clipboard" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.Label', { defaultValue: 'Issue' })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssue"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            required
                            name="title"
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueTitle"
                            label={
                              t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.title', {
                                defaultValue: 'Title',
                              }) as string
                            }
                            value={data.title}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false || !isFormUpdateable()}
                            error={!!validation.get('title')}
                            helperText={validation.get('title')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('title', event.target.value);
                            }}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
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
                            id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueStatus"
                            label={
                              t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.status', {
                                defaultValue: 'Status',
                              }) as string
                            }
                            value={data.status || ''}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false || !isFormUpdateable()}
                            error={!!validation.get('status')}
                            helperText={validation.get('status')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('status', event.target.value as EdemokraciaIssueStatus);
                            }}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="list" />
                                </InputAdornment>
                              ),
                            }}
                            select
                          >
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusCREATED"
                              value={'CREATED'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.CREATED', { defaultValue: 'CREATED' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusPENDING"
                              value={'PENDING'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.PENDING', { defaultValue: 'PENDING' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusACTIVE"
                              value={'ACTIVE'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusCLOSED"
                              value={'CLOSED'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.CLOSED', { defaultValue: 'CLOSED' })}
                            </MenuItem>
                          </TextField>
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <DateTimePicker
                            ampm={false}
                            ampmInClock={false}
                            renderInput={(props: any) => (
                              <TextField
                                {...props}
                                id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueCreated"
                                className={!editMode ? 'JUDO-viewMode' : undefined}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={serviceDateToUiDate(data.created ?? null)}
                            disabled={true || !isFormUpdateable()}
                            onChange={(newValue: any) => {
                              setEditMode(true);
                              storeDiff('created', newValue);
                            }}
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
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueDescription"
                            label={
                              t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.description', {
                                defaultValue: 'Description',
                              }) as string
                            }
                            value={data.description}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false || !isFormUpdateable()}
                            multiline
                            minRows={4.0}
                            error={!!validation.get('description')}
                            helperText={validation.get('description')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('description', event.target.value);
                            }}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation"
                            onClick={() => AdminIssueCreateDebateAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="wechat" />
                            {t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.createDebate', {
                              defaultValue: 'Create debate',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <AggregationInput
                            name="owner"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueOwner"
                            label={
                              t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.owner', {
                                defaultValue: 'Owner',
                              }) as string
                            }
                            labelList={[data.owner?.representation?.toString() ?? '']}
                            value={data.owner}
                            error={!!validation.get('owner')}
                            helperText={validation.get('owner')}
                            icon={<MdiIcon path="account" />}
                            disabled={false || !isFormUpdateable()}
                            editMode={editMode}
                            onView={async () => linkViewOwnerAction(data?.owner!)}
                            onSet={async () => {
                              const res = await openRangeDialog<AdminUserStored, AdminUserQueryCustomizer>({
                                id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueOwner',
                                columns: ownerColumns,
                                defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                                rangeCall: async (queryCustomizer) =>
                                  await adminIssueServiceImpl.getRangeForOwner(
                                    data,
                                    processQueryCustomizer(queryCustomizer),
                                  ),
                                single: true,
                                alreadySelectedItems: data.owner?.__identifier as GridRowId,
                                filterOptions: ownerRangeFilterOptions,
                                initialQueryCustomizer: ownerInitialQueryCustomizer,
                              });

                              if (res === undefined) return;

                              setEditMode(true);
                              storeDiff('owner', res as AdminUserStored);
                            }}
                            onUnset={async () => {
                              setEditMode(true);
                              storeDiff('owner', null);
                            }}
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
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOther"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachments',
                    name: 'attachments',
                    label: 'Attachments',
                    icon: 'paperclip',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCategories',
                    name: 'categories',
                    label: 'Categories',
                    icon: 'file-tree',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebates',
                    name: 'debates',
                    label: 'Debates',
                    icon: 'wechat',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherComments',
                    name: 'comments',
                    label: 'Comments',
                    icon: 'comment-text-multiple',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachmentsAttachments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapperAttachments"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.attachments ?? []}
                              columns={[
                                ...attachmentsColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueAttachments',
                                  attachmentsRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueAttachmentStored>) => {
                                if (!editMode) {
                                  rowViewAttachmentsAction(params.row);
                                }
                              }}
                              sortModel={attachmentsSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setAttachmentsSortModel(newModel);
                              }}
                              components={{
                                Toolbar: () => (
                                  <GridToolbarContainer>
                                    <Button
                                      id="CreateActionedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate"
                                      variant="text"
                                      onClick={() => tableCreateAttachmentsAction(data, () => fetchData())}
                                      disabled={isLoading || !false || editMode || !isFormUpdateable()}
                                    >
                                      <MdiIcon path="file_document_plus" />
                                      {t('judo.pages.table.create', { defaultValue: 'Create' })}
                                    </Button>
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCategoriesCategories"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapperCategories"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.categories ?? []}
                              columns={[
                                ...categoriesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories',
                                  categoriesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueCategoryStored>) => {
                                if (!editMode) {
                                  rowViewCategoriesAction(params.row);
                                }
                              }}
                              sortModel={categoriesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setCategoriesSortModel(newModel);
                              }}
                              components={{
                                Toolbar: () => (
                                  <GridToolbarContainer>
                                    <Button
                                      id="RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories-add"
                                      variant="text"
                                      onClick={async () => {
                                        const res = await categoriesRangeCall();

                                        if (res) {
                                          storeDiff('categories', [
                                            ...(data.categories || []),
                                            ...(res as AdminIssueCategoryStored[]),
                                          ]);
                                        }
                                      }}
                                      disabled={isLoading || !false || !isFormUpdateable()}
                                    >
                                      <MdiIcon path="attachment-plus" />
                                      {t('judo.pages.table.add', { defaultValue: 'Add' })}
                                    </Button>
                                    <Button
                                      id="RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories-clear"
                                      variant="text"
                                      onClick={async () => {
                                        storeDiff('categories', []);
                                      }}
                                      disabled={isLoading || !false || !isFormUpdateable()}
                                    >
                                      <MdiIcon path="link_off" />
                                      {t('judo.pages.table.clear', { defaultValue: 'Clear' })}
                                    </Button>
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebates"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                            <MdiIcon path="wechat" />
                            <Typography
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t(
                                'edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.Label',
                                { defaultValue: 'Debates' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebates"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueDebates',
                                  debatesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueDebateStored>) => {
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

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsComments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateCommentButtonCallOperation"
                            onClick={() => AdminIssueCreateCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t(
                              'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.createComment',
                              { defaultValue: 'Add comment' },
                            )}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapper"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12}>
                              <Grid
                                id="TableedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperComments"
                                container
                                direction="column"
                                alignItems="stretch"
                                justifyContent="flex-start"
                              >
                                <DataGrid
                                  {...baseTableConfig}
                                  getRowId={(row: { __identifier: string }) => row.__identifier}
                                  loading={isLoading}
                                  rows={data?.comments ?? []}
                                  columns={[
                                    ...commentsColumns,
                                    ...columnsActionCalculator(
                                      'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueComments',
                                      commentsRowActions,
                                      { shownActions: 2 },
                                    ),
                                  ]}
                                  disableSelectionOnClick
                                  onRowClick={(params: GridRowParams<AdminCommentStored>) => {
                                    if (!editMode) {
                                      rowViewCommentsAction(params.row);
                                    }
                                  }}
                                  sortModel={commentsSortModel}
                                  onSortModelChange={(newModel: GridSortModel) => {
                                    setCommentsSortModel(newModel);
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
