///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::VoteDefinition.debate#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: debate
// Page DataElement owner name: edemokracia::admin::VoteDefinition

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
  const AdminProVoteUpAction = useAdminProVoteUpAction();
  const pageRefreshDebateAction = usePageRefreshDebateAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const rowDeleteCommentsAction = useRowDeleteCommentsAction();
  const rowEditConsAction = useRowEditConsAction();
  const AdminProCreateSubArgumentAction = useAdminProCreateSubArgumentAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const linkViewIssueAction = useLinkViewIssueAction();
  const rowViewConsAction = useRowViewConsAction();
  const AdminConVoteDownAction = useAdminConVoteDownAction();
  const AdminConVoteUpAction = useAdminConVoteUpAction();
  const AdminProCreateCommentAction = useAdminProCreateCommentAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const rowEditCommentsAction = useRowEditCommentsAction();
  const AdminConCreateCommentAction = useAdminConCreateCommentAction();
  const linkViewVoteDefinitionAction = useLinkViewVoteDefinitionAction();
  const AdminConCreateSubArgumentAction = useAdminConCreateSubArgumentAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const AdminDebateCreateArgumentAction = useAdminDebateCreateArgumentAction();
  const rowEditProsAction = useRowEditProsAction();
  const AdminDebateCreateCommentAction = useAdminDebateCreateCommentAction();
  const rowViewProsAction = useRowViewProsAction();
  const AdminDebateCloseDebateAction = useAdminDebateCloseDebateAction();
  const AdminProVoteDownAction = useAdminProVoteDownAction();

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
  } = useAdminVoteDefinitionDebateView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminDebateStored>({} as unknown as AdminDebateStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminDebateStored, any>>(
    {} as unknown as Record<keyof AdminDebateStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminDebateStored, value: any) => void = useCallback(
    (attributeName: keyof AdminDebateStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminDebateStored, string>>(new Map());
  const [consSortModel, setConsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [prosSortModel, setProsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'created', sort: 'asc' }]);

  const consRowActions: TableRowAction<AdminConStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateConsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminConStored) => rowDeleteConsAction(data, row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminConVoteUpButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => AdminConVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminConVoteDownButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => AdminConVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminConCreateSubArgumentButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => AdminConCreateSubArgumentAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Con.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminConStored) => AdminConCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
  ];
  const prosRowActions: TableRowAction<AdminProStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateProsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminProStored) => rowDeleteProsAction(data, row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminProVoteUpButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => AdminProVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminProVoteDownButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => AdminProVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminProCreateSubArgumentButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => AdminProCreateSubArgumentAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminProCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => AdminProCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCommentsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminCommentStored) => rowDeleteCommentsAction(data, row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Comment.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation',
      label: t('edemokracia.admin.VoteDefinition.debate.View.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
  ];
  const title: string = t('edemokracia.admin.VoteDefinition.debate.View', { defaultValue: 'View / Edit Debate' });

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminDebateStored, any>);
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
    setValidation(new Map<keyof AdminDebateStored, string>());
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="wechat" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.Label', {
                            defaultValue: 'Debate',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebate"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={8.0}>
                          <TextField
                            required
                            name="title"
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateTitle"
                            label={
                              t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.title', {
                                defaultValue: 'Title',
                              }) as string
                            }
                            value={data.title}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false}
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

                        <Grid item xs={12} sm={12} md={2.0}>
                          <TextField
                            required
                            name="status"
                            id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateStatus"
                            label={
                              t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.status', {
                                defaultValue: 'Status',
                              }) as string
                            }
                            value={data.status || ''}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false}
                            error={!!validation.get('status')}
                            helperText={validation.get('status')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('status', event.target.value as EdemokraciaDebateStatus);
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
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaDebateStatusCREATED"
                              value={'CREATED'}
                            >
                              {t('enumerations.EdemokraciaDebateStatus.CREATED', { defaultValue: 'CREATED' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaDebateStatusPENDING"
                              value={'PENDING'}
                            >
                              {t('enumerations.EdemokraciaDebateStatus.PENDING', { defaultValue: 'PENDING' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaDebateStatusACTIVE"
                              value={'ACTIVE'}
                            >
                              {t('enumerations.EdemokraciaDebateStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaDebateStatusCLOSED"
                              value={'CLOSED'}
                            >
                              {t('enumerations.EdemokraciaDebateStatus.CLOSED', { defaultValue: 'CLOSED' })}
                            </MenuItem>
                          </TextField>
                        </Grid>

                        <Grid item xs={12} sm={12} md={2.0}>
                          <DateTimePicker
                            ampm={false}
                            ampmInClock={false}
                            renderInput={(props: any) => (
                              <TextField
                                required
                                {...props}
                                id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateCloseAt"
                                className={!editMode ? 'JUDO-viewMode' : undefined}
                                error={!!validation.get('closeAt')}
                                helperText={validation.get('closeAt')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.closeAt', {
                                defaultValue: 'Close at',
                              }) as string
                            }
                            value={serviceDateToUiDate(data.closeAt ?? null)}
                            disabled={false}
                            onChange={(newValue: any) => {
                              setEditMode(true);
                              storeDiff('closeAt', newValue);
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

                        <Grid item xs={12} sm={12} md={8.0}>
                          <AggregationInput
                            name="issue"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateIssue"
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
                            disabled={true}
                            editMode={editMode}
                            onView={async () => linkViewIssueAction(data?.issue!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <AggregationInput
                            name="createdBy"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateCreatedBy"
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
                            disabled={true}
                            editMode={editMode}
                            onView={async () => linkViewCreatedByAction(data?.createdBy!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="description"
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateDescription"
                            label={
                              t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.description', {
                                defaultValue: 'Description',
                              }) as string
                            }
                            value={data.description}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false}
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

                        <Grid item xs={12} sm={12}>
                          <AggregationInput
                            name="voteDefinition"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewDebateLabelWrapperDebateVoteDefinition"
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
                            disabled={true}
                            editMode={editMode}
                            onView={async () => linkViewVoteDefinitionAction(data?.voteDefinition!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateButtonCallOperation"
                            onClick={() => AdminDebateCloseDebateAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="wechat" />
                            {t('edemokracia.admin.VoteDefinition.debate.Debate.View.debate.debate.closeDebate', {
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
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArguments',
                    name: 'arguments',
                    label: 'Arguments',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarComments',
                    name: 'comments',
                    label: 'Comments',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArguments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCreateArgumentButtonCallOperation"
                            onClick={() => AdminDebateCreateArgumentAction(data, () => fetchData())}
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
                    </Grid>

                    <Grid item xs={12} sm={12} md={6.0}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                            <MdiIcon path="chat-plus" />
                            <Typography
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t(
                                'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.Label',
                                { defaultValue: 'Pro' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperPros"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.pros ?? []}
                              columns={[
                                ...prosColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDebatePros',
                                  prosRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminProStored>) => {
                                if (!editMode) {
                                  rowViewProsAction(params.row);
                                }
                              }}
                              sortModel={prosSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setProsSortModel(newModel);
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

                    <Grid item xs={12} sm={12} md={6.0}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                            <MdiIcon path="chat-minus" />
                            <Typography
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t(
                                'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.Label',
                                { defaultValue: 'Contra' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperCons"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.cons ?? []}
                              columns={[
                                ...consColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDebateCons',
                                  consRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminConStored>) => {
                                if (!editMode) {
                                  rowViewConsAction(params.row);
                                }
                              }}
                              sortModel={consSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setConsSortModel(newModel);
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsComments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCreateCommentButtonCallOperation"
                            onClick={() => AdminDebateCreateCommentAction(data, () => fetchData())}
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
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperComments"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminDebateComments',
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
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
