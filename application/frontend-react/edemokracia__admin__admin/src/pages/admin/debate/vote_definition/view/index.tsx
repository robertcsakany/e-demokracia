///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.voteDefinition#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: voteDefinition
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
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  EdemokraciaVoteStatus,
} from '../../../../../generated/data-api';
import { adminDebateServiceImpl, adminVoteDefinitionServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminDebateVoteDefinitionView } from './hooks/useAdminDebateVoteDefinitionView';
import {
  usePageRefreshVoteDefinitionAction,
  useAdminVoteDefinitionVoteRatingAction,
  usePageBackVoteDefinitionAction,
  useAdminVoteDefinitionVoteYesNoAbstainAction,
  useAdminVoteDefinitionVoteSelectAnswerAction,
  useAdminVoteDefinitionVoteYesNoAction,
  useButtonNavigateDebateAction,
} from './actions';

/**
 * Name: edemokracia::admin::Debate.voteDefinition#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminDebateVoteDefinitionView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshVoteDefinitionAction = usePageRefreshVoteDefinitionAction();
  const adminVoteDefinitionVoteRatingAction = useAdminVoteDefinitionVoteRatingAction();
  const pageBackVoteDefinitionAction = usePageBackVoteDefinitionAction();
  const adminVoteDefinitionVoteYesNoAbstainAction = useAdminVoteDefinitionVoteYesNoAbstainAction();
  const adminVoteDefinitionVoteSelectAnswerAction = useAdminVoteDefinitionVoteSelectAnswerAction();
  const adminVoteDefinitionVoteYesNoAction = useAdminVoteDefinitionVoteYesNoAction();
  const buttonNavigateDebateAction = useButtonNavigateDebateAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminDebateVoteDefinitionView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminVoteDefinitionStored>({} as unknown as AdminVoteDefinitionStored);
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

  const title: string = t('edemokracia.admin.Debate.voteDefinition.TransferObject.View', {
    defaultValue: 'TransferObject View',
  });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminVoteDefinitionServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminVoteDefinition>,
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
          <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
            <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
              <Card>
                <Grid item xs={12}>
                  <TextField
                    name="title"
                    id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Debate.voteDefinition/View/default/TransferObject_View/group/title"
                    label={
                      t('edemokracia.admin.Debate.voteDefinition.TransferObject.View.group.title', {
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

                <Grid item xs={12}>
                  <DateTimePicker
                    renderInput={(props: any) => (
                      <TextField
                        {...props}
                        error={!!validation.get('closeAt')}
                        helperText={validation.get('closeAt')}
                      />
                    )}
                    label={
                      t('edemokracia.admin.Debate.voteDefinition.TransferObject.View.group.closeAt', {
                        defaultValue: 'CloseAt',
                      }) as string
                    }
                    value={data.closeAt ?? null}
                    className={false || !editMode ? 'Mui-readOnly' : undefined}
                    readOnly={false || !editMode}
                    onChange={(newValue: any) => storeDiff('closeAt', newValue)}
                    InputProps={{
                      startAdornment: (
                        <InputAdornment position="start">
                          <MdiIcon path="schedule" />
                        </InputAdornment>
                      ),
                    }}
                  />
                </Grid>

                <Grid item xs={12}>
                  <TextField
                    name="status"
                    id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Debate.voteDefinition/View/default/TransferObject_View/group/status"
                    label={
                      t('edemokracia.admin.Debate.voteDefinition.TransferObject.View.group.status', {
                        defaultValue: 'Status',
                      }) as string
                    }
                    select
                    value={data.status}
                    error={!!validation.get('status')}
                    helperText={validation.get('status')}
                    onChange={(event) => {
                      storeDiff('status', event.target.value as EdemokraciaVoteStatus);
                    }}
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
                  >
                    <MenuItem value={'CREATED'}>
                      {t('enumerations.EdemokraciaVoteStatus.CREATED', { defaultValue: 'CREATED' })}
                    </MenuItem>
                    <MenuItem value={'PENDING'}>
                      {t('enumerations.EdemokraciaVoteStatus.PENDING', { defaultValue: 'PENDING' })}
                    </MenuItem>
                    <MenuItem value={'ACTIVE'}>
                      {t('enumerations.EdemokraciaVoteStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                    </MenuItem>
                    <MenuItem value={'CLOSED'}>
                      {t('enumerations.EdemokraciaVoteStatus.CLOSED', { defaultValue: 'CLOSED' })}
                    </MenuItem>
                  </TextField>
                </Grid>

                <Grid item xs={12}>
                  <Button onClick={() => buttonNavigateDebateAction(data)} disabled={isLoading || editMode}>
                    <MdiIcon path="table_rows" />
                    {t('edemokracia.admin.Debate.voteDefinition.TransferObject.View.group.debate', {
                      defaultValue: 'Debate',
                    })}
                  </Button>
                </Grid>

                <Grid item xs={12}>
                  <DateTimePicker
                    renderInput={(props: any) => (
                      <TextField
                        {...props}
                        error={!!validation.get('created')}
                        helperText={validation.get('created')}
                      />
                    )}
                    label={
                      t('edemokracia.admin.Debate.voteDefinition.TransferObject.View.group.created', {
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

                <Grid item xs={12}>
                  <TextField
                    name="description"
                    id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Debate.voteDefinition/View/default/TransferObject_View/group/description"
                    label={
                      t('edemokracia.admin.Debate.voteDefinition.TransferObject.View.group.description', {
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
              </Card>
            </Grid>

            <Grid container item>
              <ModeledTabs
                activeIndex={0}
                childTabs={[
                  {
                    id: 'yesnovote',
                    name: 'yesnovote',
                    label: 'Yes / No vote',
                  },
                  {
                    id: 'yesnoabstainvote',
                    name: 'yesnoabstainvote',
                    label: 'Yes / No / Abstain vote',
                  },
                  {
                    id: 'selectanswervote',
                    name: 'selectanswervote',
                    label: 'Select answer vote',
                  },
                  {
                    id: 'ratingvote',
                    name: 'ratingvote',
                    label: 'Rating vote',
                  },
                ]}
              >
                ( !data.isNotYesNoType &&
                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={4.0}>
                    <Button
                      onClick={() => adminVoteDefinitionVoteYesNoAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="chevron_right" />
                      {t(
                        'edemokracia.admin.Debate.voteDefinition.TransferObject.View.tabBar.yesnovote.yesnovote.voteYesNo',
                        { defaultValue: 'VoteYesNo' },
                      )}
                    </Button>
                  </Grid>
                </Grid>
                ) ( !data.isNotYesNoAbstainType &&
                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={4.0}>
                    <Button
                      onClick={() => adminVoteDefinitionVoteYesNoAbstainAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="chevron_right" />
                      {t(
                        'edemokracia.admin.Debate.voteDefinition.TransferObject.View.tabBar.yesnoabstainvote.yesnoabstainvote.voteYesNoAbstain',
                        { defaultValue: 'VoteYesNoAbstain' },
                      )}
                    </Button>
                  </Grid>
                </Grid>
                ) ( !data.isNotSelectAnswerType &&
                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={4.0}>
                    <Button
                      onClick={() => adminVoteDefinitionVoteSelectAnswerAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="chevron_right" />
                      {t(
                        'edemokracia.admin.Debate.voteDefinition.TransferObject.View.tabBar.selectanswervote.selectanswervote.voteSelectAnswer',
                        { defaultValue: 'VoteSelectAnswer' },
                      )}
                    </Button>
                  </Grid>
                </Grid>
                ) ( !data.isNotRatingType &&
                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={4.0}>
                    <Button
                      onClick={() => adminVoteDefinitionVoteRatingAction(data, () => fetchData())}
                      disabled={isLoading || editMode}
                    >
                      <MdiIcon path="chevron_right" />
                      {t(
                        'edemokracia.admin.Debate.voteDefinition.TransferObject.View.tabBar.ratingvote.ratingvote.voteRating',
                        { defaultValue: 'VoteRating' },
                      )}
                    </Button>
                  </Grid>
                </Grid>
                )
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
