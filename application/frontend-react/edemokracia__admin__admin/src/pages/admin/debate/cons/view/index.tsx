///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.cons#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: cons
// Page DataElement owner name: edemokracia::admin::Debate

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, CardContent, Button, TextField, Typography, InputAdornment, Card } from '@mui/material';
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
import { DateTimePicker } from '@mui/x-date-pickers';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import type { Dayjs } from 'dayjs';
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
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminPro,
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
import { adminDebateServiceImpl, adminConServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminDebateConsView } from './hooks/useAdminDebateConsView';
import {
  useRowViewCommentsAction,
  useRowEditProsAction,
  useRowDeleteConsAction,
  useAdminConCreateCommentAction,
  useAdminConVoteUpAction,
  useAdminCommentVoteDownAction,
  useRowDeleteProsAction,
  useButtonNavigateVotesAction,
  useRowEditConsAction,
  useAdminProCreateCommentAction,
  useAdminProVoteDownAction,
  useRowViewConsAction,
  useAdminConCreateSubArgumentAction,
  usePageRefreshConsAction,
  useRowViewProsAction,
  useLinkViewCreatedByAction,
  useAdminProVoteUpAction,
  usePageDeleteConsAction,
  useAdminProCreateSubArgumentAction,
  useAdminConVoteDownAction,
  usePageEditConsAction,
  useAdminCommentVoteUpAction,
} from './actions';

/**
 * Name: edemokracia::admin::Debate.cons#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminDebateConsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const rowEditProsAction = useRowEditProsAction();
  const rowDeleteConsAction = useRowDeleteConsAction();
  const AdminConCreateCommentAction = useAdminConCreateCommentAction();
  const AdminConVoteUpAction = useAdminConVoteUpAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const rowDeleteProsAction = useRowDeleteProsAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const rowEditConsAction = useRowEditConsAction();
  const AdminProCreateCommentAction = useAdminProCreateCommentAction();
  const AdminProVoteDownAction = useAdminProVoteDownAction();
  const rowViewConsAction = useRowViewConsAction();
  const AdminConCreateSubArgumentAction = useAdminConCreateSubArgumentAction();
  const pageRefreshConsAction = usePageRefreshConsAction();
  const rowViewProsAction = useRowViewProsAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const AdminProVoteUpAction = useAdminProVoteUpAction();
  const pageDeleteConsAction = usePageDeleteConsAction();
  const AdminProCreateSubArgumentAction = useAdminProCreateSubArgumentAction();
  const AdminConVoteDownAction = useAdminConVoteDownAction();
  const pageEditConsAction = usePageEditConsAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();

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
  } = useAdminDebateConsView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminConStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminDebateConsView))`,
  );
  const handleDeleteError = useErrorHandler<AdminConStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminDebateConsView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminConStored>({} as unknown as AdminConStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminConStored, any>>(
    {} as unknown as Record<keyof AdminConStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminConStored, value: any) => void = useCallback(
    (attributeName: keyof AdminConStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminConStored, string>>(new Map());
  const [consSortModel, setConsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [prosSortModel, setProsSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'created', sort: 'asc' }]);

  const consRowActions: TableRowAction<AdminConStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConConsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminConStored) => rowDeleteConsAction(data, row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Con.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminConStored) => AdminConVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Con.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminConStored) => AdminConVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateSubArgumentButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Con.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminConStored) => AdminConCreateSubArgumentAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Con.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminConStored) => AdminConCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminConStored) => editMode,
    },
  ];
  const prosRowActions: TableRowAction<AdminProStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConProsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminProStored) => rowDeleteProsAction(data, row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode || !row.__deleteable,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminProVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Pro.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminProStored) => AdminProVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminProVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Pro.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminProStored) => AdminProVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminProCreateSubArgumentButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Pro.createSubArgument', {
        defaultValue: 'Add argument',
      }) as string,
      icon: <MdiIcon path="account-voice" />,
      action: async (row: AdminProStored) => AdminProCreateSubArgumentAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminProCreateCommentButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Pro.createComment', {
        defaultValue: 'Add comment',
      }) as string,
      icon: <MdiIcon path="comment-text-multiple" />,
      action: async (row: AdminProStored) => AdminProCreateCommentAction(row, () => fetchData()),
      disabled: (row: AdminProStored) => editMode,
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Debate.cons.View.edemokracia.admin.Comment.voteDown', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
  ];
  const title: string = t('edemokracia.admin.Debate.cons.View', { defaultValue: 'View / Edit Con' });

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminConStored, any>);
    } catch (error) {
      handleFetchError(error);
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
      handleUpdateError(error, { setValidation }, data);
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
      handleDeleteError(error, undefined, data);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminConStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {editMode && (
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
        {editMode && (
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
        {!editMode && (
          <Grid item>
            <Button id="page-action-delete" onClick={() => deleteData()} disabled={isLoading || !data.__deleteable}>
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="chat-minus" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Debate.cons.Con.View.con.con.Label', { defaultValue: 'Contra' })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperCon"
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
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConTitle"
                            label={
                              t('edemokracia.admin.Debate.cons.Con.View.con.con.title', {
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

                        <Grid item xs={12} sm={12} md={3.0}>
                          <DateTimePicker
                            ampm={false}
                            ampmInClock={false}
                            renderInput={(props: any) => (
                              <TextField
                                required
                                {...props}
                                id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConCreated"
                                className={!editMode ? 'JUDO-viewMode' : undefined}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.Debate.cons.Con.View.con.con.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={data.created ?? null}
                            disabled={false}
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
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConCreatedBy"
                            label={
                              t('edemokracia.admin.Debate.cons.Con.View.con.con.createdBy', {
                                defaultValue: 'Created by',
                              }) as string
                            }
                            labelList={[data.createdBy?.representation?.toString() ?? '']}
                            value={data.createdBy}
                            error={!!validation.get('createdBy')}
                            helperText={validation.get('createdBy')}
                            icon={<MdiIcon path="table_rows" />}
                            disabled={true}
                            editMode={editMode}
                            onView={async () => linkViewCreatedByAction(data?.createdBy!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="description"
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConDescription"
                            label={
                              t('edemokracia.admin.Debate.cons.Con.View.con.con.description', {
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

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConVoteUpButtonCallOperation"
                            onClick={() => AdminConVoteUpAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-up" />
                            {t('edemokracia.admin.Debate.cons.Con.View.con.con.voteUp', { defaultValue: '' })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="upVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConUpVotes"
                            label={
                              t('edemokracia.admin.Debate.cons.Con.View.con.con.upVotes', {
                                defaultValue: '',
                              }) as string
                            }
                            type="number"
                            value={data.upVotes}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={true}
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConVoteDownButtonCallOperation"
                            onClick={() => AdminConVoteDownAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-down" />
                            {t('edemokracia.admin.Debate.cons.Con.View.con.con.voteDown', { defaultValue: '' })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="downVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewConLabelWrapperConDownVotes"
                            label={
                              t('edemokracia.admin.Debate.cons.Con.View.con.con.downVotes', {
                                defaultValue: '',
                              }) as string
                            }
                            type="number"
                            value={data.downVotes}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={true}
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
                            id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConVotesButtonNavigate"
                            editMode={editMode}
                            navigateAction={() => buttonNavigateVotesAction(data)}
                          >
                            {t('edemokracia.admin.Debate.cons.Con.View.con.con.votes', { defaultValue: 'Votes' })}
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
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArguments',
                    name: 'arguments',
                    label: 'Arguments',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarComments',
                    name: 'comments',
                    label: 'Comments',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArguments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateSubArgumentButtonCallOperation"
                            onClick={() => AdminConCreateSubArgumentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="account-voice" />
                            {t(
                              'edemokracia.admin.Debate.cons.Con.View.tabBar.arguments.arguments.actions.createSubArgument',
                              { defaultValue: 'Add argument' },
                            )}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12} md={6.0}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsProsLabelWrapper"
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
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsProsLabelWrapperProsLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t('edemokracia.admin.Debate.cons.Con.View.tabBar.arguments.arguments.pros.pros.Label', {
                                defaultValue: 'Pros',
                              })}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsProsLabelWrapperPros"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminConPros',
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
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsConsLabelWrapper"
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
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsConsLabelWrapperConsLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t('edemokracia.admin.Debate.cons.Con.View.tabBar.arguments.arguments.cons.cons.Label', {
                                defaultValue: 'Cons',
                              })}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarArgumentsArgumentsConsLabelWrapperCons"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminConCons',
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarCommentsComments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12} md={4.0}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarCommentsCommentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation"
                            onClick={() => AdminConCreateCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t(
                              'edemokracia.admin.Debate.cons.Con.View.tabBar.comments.comments.actions.createComment',
                              { defaultValue: 'Add comment' },
                            )}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarCommentsCommentsCommentsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDebateConsViewDefaultConViewTabBarCommentsCommentsCommentsLabelWrapperComments"
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
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminConComments',
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
