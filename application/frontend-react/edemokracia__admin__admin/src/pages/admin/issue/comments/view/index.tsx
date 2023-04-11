///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.comments#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: comments
// Page DataElement owner name: edemokracia::admin::Issue

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, CardContent, Button, TextField, Card, InputAdornment, Typography } from '@mui/material';
import {
  GridRowId,
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
  AdminIssue,
  AdminIssueStored,
  AdminComment,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
  AdminUserMaskBuilder,
} from '../../../../../generated/data-api';
import { adminIssueServiceImpl, adminCommentServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminIssueCommentsView } from './hooks/useAdminIssueCommentsView';
import {
  usePageRefreshCommentsAction,
  useLinkViewCreatedByAction,
  useAdminCommentVoteUpAction,
  useButtonNavigateVotesAction,
  useAdminCommentVoteDownAction,
} from './actions';

/**
 * Name: edemokracia::admin::Issue.comments#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminIssueCommentsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshCommentsAction = usePageRefreshCommentsAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminIssueCommentsView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCommentStored>({} as unknown as AdminCommentStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminCommentStored, any>>(
    {} as unknown as Record<keyof AdminCommentStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminCommentStored, value: any) => void = useCallback(
    (attributeName: keyof AdminCommentStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminCommentStored, string>>(new Map());

  const title: string = t('edemokracia.admin.Issue.comments.View', { defaultValue: 'View / Edit Comment' });

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

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminCommentStored, string>());
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="comment-text-multiple" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroupLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Issue.comments.Comment.View.group.group.Label', {
                            defaultValue: 'Comment',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroup"
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
                            renderInput={(props: any) => (
                              <TextField
                                {...props}
                                id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroupCreated"
                                className={!editMode ? 'JUDO-viewMode' : undefined}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.Issue.comments.Comment.View.group.group.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={data.created ?? null}
                            disabled={true}
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

                        <Grid item xs={12} sm={12} md={4.0}>
                          <AggregationInput
                            name="createdBy"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroupCreatedBy"
                            label={
                              t('edemokracia.admin.Issue.comments.Comment.View.group.group.createdBy', {
                                defaultValue: 'CreatedBy',
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
                            name="comment"
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroupComment"
                            label={
                              t('edemokracia.admin.Issue.comments.Comment.View.group.group.comment', {
                                defaultValue: 'Comment',
                              }) as string
                            }
                            value={data.comment}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false}
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation"
                            onClick={() => AdminCommentVoteUpAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-up" />
                            {t('edemokracia.admin.Issue.comments.Comment.View.group.group.voteUp', {
                              defaultValue: '',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="upVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroupUpVotes"
                            label={
                              t('edemokracia.admin.Issue.comments.Comment.View.group.group.upVotes', {
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation"
                            onClick={() => AdminCommentVoteDownAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-down" />
                            {t('edemokracia.admin.Issue.comments.Comment.View.group.group.voteDown', {
                              defaultValue: '',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="downVotes"
                            id="NumericInputedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewDefaultCommentViewGroupLabelWrapperGroupDownVotes"
                            label={
                              t('edemokracia.admin.Issue.comments.Comment.View.group.group.downVotes', {
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
                            id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminIssueCommentsViewEdemokraciaAdminAdminEdemokraciaAdminCommentVotesButtonNavigate"
                            editMode={editMode}
                            navigateAction={() => buttonNavigateVotesAction(data)}
                          >
                            {t('edemokracia.admin.Issue.comments.Comment.View.group.group.votes', {
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
