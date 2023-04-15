//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Pro.pros#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: pros
// Page DataElement owner name: edemokracia::admin::Pro

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, InputAdornment, TextField, Typography } from '@mui/material';
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
  AdminCommentMaskBuilder,
  AdminConQueryCustomizer,
  AdminComment,
  AdminUser,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminProServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminProProsView } from './hooks/useAdminProProsView';
import {
  useLinkViewCreatedByAction,
  useAdminConCreateSubArgumentAction,
  useRowViewProsAction,
  useRowEditConsAction,
  useAdminConCreateCommentAction,
  useVoteUpAction,
  useAdminConVoteDownAction,
  useRowEditProsAction,
  useAdminCommentVoteDownAction,
  usePageDeleteProsAction,
  useCreateCommentAction,
  useRowDeleteConsAction,
  useCreateSubArgumentAction,
  useRowViewCommentsAction,
  useRowViewConsAction,
  useRowDeleteProsAction,
  useAdminCommentVoteUpAction,
  useButtonNavigateVotesAction,
  usePageRefreshProsAction,
  useAdminConVoteUpAction,
  usePageEditProsAction,
  useVoteDownAction,
} from './actions';

/**
 * Name: edemokracia::admin::Pro.pros#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminProProsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const AdminConCreateSubArgumentAction = useAdminConCreateSubArgumentAction();
  const rowViewProsAction = useRowViewProsAction();
  const rowEditConsAction = useRowEditConsAction();
  const AdminConCreateCommentAction = useAdminConCreateCommentAction();
  const voteUpAction = useVoteUpAction();
  const AdminConVoteDownAction = useAdminConVoteDownAction();
  const rowEditProsAction = useRowEditProsAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const pageDeleteProsAction = usePageDeleteProsAction();
  const createCommentAction = useCreateCommentAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const createSubArgumentAction = useCreateSubArgumentAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const rowViewConsAction = useRowViewConsAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const pageRefreshProsAction = usePageRefreshProsAction();
  const AdminConVoteUpAction = useAdminConVoteUpAction();
  const pageEditProsAction = usePageEditProsAction();
  const voteDownAction = useVoteDownAction();

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
  } = useAdminProProsView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminProStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminProProsView))`,
  );
  const handleDeleteError = useErrorHandler<AdminProStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminProProsView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminProStored>({} as unknown as AdminProStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminProStored, any>>(
    {} as unknown as Record<keyof AdminProStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminProStored, value: any) => void = useCallback(
    (attributeName: keyof AdminProStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminProStored, string>>(new Map());
  const [consSortModel, setConsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [prosSortModel, setProsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'created', sort: 'asc' }]);

  const consRowActions: TableRowAction<AdminConStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProConsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminConStored) => rowDeleteConsAction(data, row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminConVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Con.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => AdminConVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminConVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Con.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => AdminConVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateSubArgumentButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => AdminConCreateSubArgumentAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Con.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminConStored) => AdminConCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
  ];
  const prosRowActions: TableRowAction<AdminProStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProProsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminProStored) => rowDeleteProsAction(data, row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Pro.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => voteUpAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Pro.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => voteDownAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProCreateSubArgumentButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => createSubArgumentAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => createCommentAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Pro.pros.View.edemokracia.admin.Comment.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
  ];
  const title: string = t('edemokracia.admin.Pro.pros.View', { defaultValue: 'View / Edit Pro' });

  const isFormUpdateable = useCallback(() => {
    return true && typeof data?.__updateable === 'boolean' && data?.__updateable;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return true && typeof data?.__deleteable === 'boolean' && data?.__deleteable;
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
      } as Record<keyof AdminProStored, any>);
    } catch (error) {
      handleFetchError(error);
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
      handleUpdateError(error, { setValidation }, data);
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
      handleDeleteError(error, undefined, data);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminProStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {editMode && isFormUpdateable() && (
          <Grid item>
            <Button
              id="page-action-edit-cancel"
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
        {editMode && isFormUpdateable() && (
          <Grid item>
            <Button id="page-action-edit-save" onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
            </Button>
          </Grid>
        )}
        {!editMode && isFormDeleteable() && (
          <Grid item>
            <Button
              id="page-action-delete"
              onClick={() =>
                pageDeleteProsAction(
                  { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminPro>,
                  data,
                  () => {
                    back();
                  },
                )
              }
              disabled={isLoading || !data.__deleteable}
            >
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="chat-plus" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.Label', { defaultValue: 'Pro' })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperPro"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={6.0}>
                          <TextField
                            required
                            name="title"
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProTitle"
                            label={
                              t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.title', {
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

                        <Grid item xs={12} sm={12} md={3.0}>
                          <DateTimePicker
                            ampm={false}
                            ampmInClock={false}
                            renderInput={(props: any) => (
                              <TextField
                                required
                                {...props}
                                id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProCreated"
                                className={!editMode ? 'JUDO-viewMode' : undefined}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={serviceDateToUiDate(data.created ?? null)}
                            disabled={false || !isFormUpdateable()}
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

                        <Grid item xs={12} sm={12} md={3.0}>
                          <AggregationInput
                            name="createdBy"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProCreatedBy"
                            label={
                              t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.createdBy', {
                                defaultValue: 'Created by',
                              }) as string
                            }
                            labelList={[data.createdBy?.representation?.toString() ?? '']}
                            value={data.createdBy}
                            error={!!validation.get('createdBy')}
                            helperText={validation.get('createdBy')}
                            icon={<MdiIcon path="table_rows" />}
                            disabled={true || !isFormUpdateable()}
                            editMode={editMode}
                            onView={async () => linkViewCreatedByAction(data?.createdBy!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="description"
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProDescription"
                            label={
                              t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.description', {
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

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProVoteUpButtonCallOperation"
                            onClick={() => voteUpAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-up" />
                            {t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.voteUp', { defaultValue: '' })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="upVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProUpVotes"
                            label={
                              t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.upVotes', { defaultValue: '' }) as string
                            }
                            type="number"
                            value={data.upVotes}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={true || !isFormUpdateable()}
                            error={!!validation.get('upVotes')}
                            helperText={validation.get('upVotes')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('upVotes', Number(event.target.value));
                            }}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{}}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Grid container sx={{ height: dividerHeight }}></Grid>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProVoteDownButtonCallOperation"
                            onClick={() => voteDownAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-down" />
                            {t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.voteDown', { defaultValue: '' })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="downVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewProLabelWrapperProDownVotes"
                            label={
                              t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.downVotes', { defaultValue: '' }) as string
                            }
                            type="number"
                            value={data.downVotes}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={true || !isFormUpdateable()}
                            error={!!validation.get('downVotes')}
                            helperText={validation.get('downVotes')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('downVotes', Number(event.target.value));
                            }}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{}}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Grid container sx={{ height: dividerHeight }}></Grid>
                        </Grid>

                        <Grid item xs={12} sm={12} md={2.0}>
                          <CollectionAssociationButton
                            id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProVotesButtonNavigate"
                            editMode={editMode}
                            navigateAction={() => buttonNavigateVotesAction(data)}
                          >
                            {t('edemokracia.admin.Pro.pros.Pro.View.pro.pro.votes', { defaultValue: 'Votes' })}
                            <MdiIcon path="arrow-right" />
                          </CollectionAssociationButton>
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid container item xs={12} sm={12}>
              <ModeledTabs
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArguments',
                    name: 'arguments',
                    label: 'Arguments',
                    icon: 'account-voice',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarComments',
                    name: 'comments',
                    label: 'Comments',
                    icon: 'comment-text-multiple',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArguments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProCreateSubArgumentButtonCallOperation"
                            onClick={() => createSubArgumentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="account-voice" />
                            {t(
                              'edemokracia.admin.Pro.pros.Pro.View.tabBar.arguments.arguments.actions.createSubArgument',
                              { defaultValue: 'Add argument' },
                            )}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12} md={6.0}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsProsLabelWrapper"
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
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsProsLabelWrapperProsLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t('edemokracia.admin.Pro.pros.Pro.View.tabBar.arguments.arguments.pros.pros.Label', {
                                defaultValue: 'Pros',
                              })}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsProsLabelWrapperPros"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminProPros',
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
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsConsLabelWrapper"
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
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsConsLabelWrapperConsLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t('edemokracia.admin.Pro.pros.Pro.View.tabBar.arguments.arguments.cons.cons.Label', {
                                defaultValue: 'Cons',
                              })}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarArgumentsArgumentsConsLabelWrapperCons"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminProCons',
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarCommentsComments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12} md={4.0}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarCommentsCommentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminProProsViewEdemokraciaAdminAdminEdemokraciaAdminProCreateCommentButtonCallOperation"
                            onClick={() => createCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t('edemokracia.admin.Pro.pros.Pro.View.tabBar.comments.comments.actions.createComment', {
                              defaultValue: 'Add comment',
                            })}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarCommentsCommentsCommentsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminProProsViewDefaultProViewTabBarCommentsCommentsCommentsLabelWrapperComments"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminProComments',
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
