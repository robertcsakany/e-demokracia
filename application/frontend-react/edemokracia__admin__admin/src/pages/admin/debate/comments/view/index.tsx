//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.comments#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: comments
// Page DataElement owner name: edemokracia::admin::Debate

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, InputAdornment, TextField, Typography } from '@mui/material';
import {
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridRowSelectionModel,
  GridSortItem,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { DateTimePicker, DateTimeValidationError } from '@mui/x-date-pickers';
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
  BinaryInput,
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
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  AdminDebate,
  AdminComment,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminDebateStored,
  AdminUser,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
  AdminUserMaskBuilder,
} from '../../../../../generated/data-api';
import { adminDebateServiceImpl, adminCommentServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminDebateCommentsView } from './hooks/useAdminDebateCommentsView';
import {
  usePageDeleteCommentsAction,
  usePageRefreshCommentsAction,
  useAdminCommentVoteDownAction,
  useAdminCommentVoteUpAction,
  usePageEditCommentsAction,
  useLinkViewCreatedByAction,
  useButtonNavigateVotesAction,
} from './actions';

/**
 * Name: edemokracia::admin::Debate.comments#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminDebateCommentsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageDeleteCommentsAction = usePageDeleteCommentsAction();
  const pageRefreshCommentsAction = usePageRefreshCommentsAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const pageEditCommentsAction = usePageEditCommentsAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const { queryCustomizer } = useAdminDebateCommentsView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminComment>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminDebateCommentsView))`,
  );
  const handleDeleteError = useErrorHandler<AdminComment>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminDebateCommentsView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCommentStored>({} as unknown as AdminCommentStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminCommentStored, any>>(
    {} as unknown as Record<keyof AdminCommentStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminCommentStored, value: any) => void = useCallback(
    (attributeName: keyof AdminCommentStored, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = [];
      if (dateTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiDateToServiceDate(value);
      } else if (dateTimeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = value;
      } else {
        payloadDiff[attributeName] = value;
      }
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminComment, string>>(new Map());

  const title: string = t('edemokracia.admin.Debate.comments.View', { defaultValue: 'View / Edit Comment' });

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
      const res = await adminCommentServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminComment>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof AdminCommentStored, any>);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCommentServiceImpl.update(payloadDiff);

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
      await adminCommentServiceImpl.delete(data);

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
    setValidation(new Map<keyof AdminComment, string>());
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
                pageDeleteCommentsAction(
                  { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminDebate>,
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="comment-text-multiple" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroupLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Debate.comments.Comment.View.group.group.Label', {
                            defaultValue: 'Comment',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroup"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <DateTimePicker
                            ampm={false}
                            ampmInClock={false}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            slotProps={{
                              textField: {
                                id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroupCreated',
                                helperText: validation.get('created'),
                                error: !!validation.get('created'),
                                InputProps: {
                                  startAdornment: (
                                    <InputAdornment position="start">
                                      <MdiIcon path="schedule" />
                                    </InputAdornment>
                                  ),
                                },
                              },
                            }}
                            onError={(newError: DateTimeValidationError, value: any) => {
                              // https://mui.com/x/react-date-pickers/validation/#show-the-error
                              setValidation((prevValidation) => {
                                const copy = new Map<keyof AdminComment, string>(prevValidation);
                                copy.set(
                                  'created',
                                  newError === 'invalidDate'
                                    ? (t('judo.error.validation-failed.PATTERN_VALIDATION_FAILED', {
                                        defaultValue: 'Value does not match the pattern requirements.',
                                      }) as string)
                                    : '',
                                );
                                return copy;
                              });
                            }}
                            views={['year', 'month', 'day', 'hours', 'minutes', 'seconds']}
                            label={
                              t('edemokracia.admin.Debate.comments.Comment.View.group.group.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={serviceDateToUiDate(data.created ?? null)}
                            disabled={true || !isFormUpdateable()}
                            onChange={(newValue: Date) => {
                              setEditMode(true);
                              storeDiff('created', newValue);
                            }}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <AggregationInput
                            name="createdBy"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroupCreatedBy"
                            label={
                              t('edemokracia.admin.Debate.comments.Comment.View.group.group.createdBy', {
                                defaultValue: 'CreatedBy',
                              }) as string
                            }
                            labelList={[data.createdBy?.representation?.toString() ?? '']}
                            value={data.createdBy}
                            error={!!validation.get('createdBy')}
                            helperText={validation.get('createdBy')}
                            icon={<MdiIcon path="table_rows" />}
                            disabled={true || !isFormUpdateable()}
                            editMode={editMode}
                            onView={async () => linkViewCreatedByAction(data, data?.createdBy!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="comment"
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroupComment"
                            label={
                              t('edemokracia.admin.Debate.comments.Comment.View.group.group.comment', {
                                defaultValue: 'Comment',
                              }) as string
                            }
                            value={data.comment}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false || !isFormUpdateable()}
                            multiline
                            minRows={4.0}
                            error={!!validation.get('comment')}
                            helperText={validation.get('comment')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('comment', event.target.value);
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation"
                            onClick={() => AdminCommentVoteUpAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-up" />
                            {t('edemokracia.admin.Debate.comments.Comment.View.group.group.voteUp', {
                              defaultValue: '',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="upVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroupUpVotes"
                            label={
                              t('edemokracia.admin.Debate.comments.Comment.View.group.group.upVotes', {
                                defaultValue: '',
                              }) as string
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation"
                            onClick={() => AdminCommentVoteDownAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-down" />
                            {t('edemokracia.admin.Debate.comments.Comment.View.group.group.voteDown', {
                              defaultValue: '',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="downVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewDefaultCommentViewGroupLabelWrapperGroupDownVotes"
                            label={
                              t('edemokracia.admin.Debate.comments.Comment.View.group.group.downVotes', {
                                defaultValue: '',
                              }) as string
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
                            id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminDebateCommentsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVotesButtonNavigate"
                            editMode={editMode}
                            navigateAction={() => buttonNavigateVotesAction(data)}
                          >
                            {t('edemokracia.admin.Debate.comments.Comment.View.group.group.votes', {
                              defaultValue: 'Votes',
                            })}
                            <MdiIcon path="arrow-right" />
                          </CollectionAssociationButton>
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
