///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Pro.comments#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: comments
// Page DataElement owner name: edemokracia::admin::Pro

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
  AdminProStored,
  AdminComment,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
  AdminUserMaskBuilder,
} from '../../../../../generated/data-api';
import { adminProServiceImpl, adminCommentServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminProCommentsView } from './hooks/useAdminProCommentsView';
import {
  useAdminCommentVoteUpAction,
  useButtonNavigateVotesAction,
  useLinkViewCreatedByAction,
  useAdminCommentVoteDownAction,
  usePageRefreshCommentsAction,
} from './actions';

/**
 * Name: edemokracia::admin::Pro.comments#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminProCommentsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const linkViewCreatedByAction = useLinkViewCreatedByAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const pageRefreshCommentsAction = usePageRefreshCommentsAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminProCommentsView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCommentStored>({} as unknown as AdminCommentStored);
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

  const title: string = t('edemokracia.admin.Pro.comments.View', { defaultValue: 'View / Edit Comment' });

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
                        <MdiIcon path="comment-text-multiple" />
                        <Typography variant="h6" component="h1">
                          {t('edemokracia.admin.Pro.comments.Comment.View.group.group.Label', {
                            defaultValue: 'Comment',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="stretch" justifyContent="flex-start" spacing={2}>
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
                              t('edemokracia.admin.Pro.comments.Comment.View.group.group.created', {
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

                        <Grid item xs={12} sm={12} md={4.0}>
                          <AggregationInput
                            name="createdBy"
                            id="Link@edemokracia/admin/Admin/edemokracia/admin/Pro.comments/View/default/Comment_View/group/LabelWrapper/group/createdBy"
                            label={
                              t('edemokracia.admin.Pro.comments.Comment.View.group.group.createdBy', {
                                defaultValue: 'CreatedBy',
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

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="comment"
                            id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Pro.comments/View/default/Comment_View/group/LabelWrapper/group/comment"
                            label={
                              t('edemokracia.admin.Pro.comments.Comment.View.group.group.comment', {
                                defaultValue: 'Comment',
                              }) as string
                            }
                            value={data.comment}
                            multiline
                            minRows={4.0}
                            error={!!validation.get('comment')}
                            helperText={validation.get('comment')}
                            onChange={(event) => storeDiff('comment', event.target.value)}
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

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Button
                            onClick={() => AdminCommentVoteUpAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-up" />
                            {t('edemokracia.admin.Pro.comments.Comment.View.group.group.voteUp', { defaultValue: '' })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="upVotes"
                            id="NumericInput@edemokracia/admin/Admin/edemokracia/admin/Pro.comments/View/default/Comment_View/group/LabelWrapper/group/upVotes"
                            label={
                              t('edemokracia.admin.Pro.comments.Comment.View.group.group.upVotes', {
                                defaultValue: '',
                              }) as string
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

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Grid container sx={{ height: dividerHeight }}></Grid>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Button
                            onClick={() => AdminCommentVoteDownAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="thumb-down" />
                            {t('edemokracia.admin.Pro.comments.Comment.View.group.group.voteDown', {
                              defaultValue: '',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12} md={1.0}>
                          <TextField
                            name="downVotes"
                            id="NumericInput@edemokracia/admin/Admin/edemokracia/admin/Pro.comments/View/default/Comment_View/group/LabelWrapper/group/downVotes"
                            label={
                              t('edemokracia.admin.Pro.comments.Comment.View.group.group.downVotes', {
                                defaultValue: '',
                              }) as string
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

                        <Grid item xs={12} sm={12} md={1.0}>
                          <Grid container sx={{ height: dividerHeight }}></Grid>
                        </Grid>

                        <Grid item xs={12} sm={12} md={2.0}>
                          <Button onClick={() => buttonNavigateVotesAction(data)} disabled={isLoading || editMode}>
                            <MdiIcon path="checkbox-multiple-marked" />
                            {t('edemokracia.admin.Pro.comments.Comment.View.group.group.votes', {
                              defaultValue: 'Votes',
                            })}
                          </Button>
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
