///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.voteDefinition#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: voteDefinition
// Page DataElement owner name: edemokracia::admin::Debate

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, CardContent, Button, TextField, MenuItem, InputAdornment, Card } from '@mui/material';
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
  const AdminVoteDefinitionVoteRatingAction = useAdminVoteDefinitionVoteRatingAction();
  const AdminVoteDefinitionVoteYesNoAbstainAction = useAdminVoteDefinitionVoteYesNoAbstainAction();
  const AdminVoteDefinitionVoteSelectAnswerAction = useAdminVoteDefinitionVoteSelectAnswerAction();
  const AdminVoteDefinitionVoteYesNoAction = useAdminVoteDefinitionVoteYesNoAction();
  const buttonNavigateDebateAction = useButtonNavigateDebateAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminDebateVoteDefinitionView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminVoteDefinitionStored>({} as unknown as AdminVoteDefinitionStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminVoteDefinitionStored, any>>(
    {} as unknown as Record<keyof AdminVoteDefinitionStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminVoteDefinitionStored, value: any) => void = useCallback(
    (attributeName: keyof AdminVoteDefinitionStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminVoteDefinitionStored, string>>(new Map());

  const title: string = t('edemokracia.admin.Debate.voteDefinition.View', {
    defaultValue: 'View / Edit Vote Definition',
  });

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminVoteDefinitionStored, any>);
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
    setValidation(new Map<keyof AdminVoteDefinitionStored, string>());
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroup">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="title"
                        id="TextInputedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupTitle"
                        label={
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.title', {
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

                    <Grid item xs={12} sm={12}>
                      <DateTimePicker
                        ampm={false}
                        ampmInClock={false}
                        renderInput={(props: any) => (
                          <TextField
                            required
                            {...props}
                            id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupCloseAt"
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            error={!!validation.get('closeAt')}
                            helperText={validation.get('closeAt')}
                          />
                        )}
                        label={
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.closeAt', {
                            defaultValue: 'CloseAt',
                          }) as string
                        }
                        value={data.closeAt ?? null}
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

                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="status"
                        id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupStatus"
                        label={
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.status', {
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
                          storeDiff('status', event.target.value as EdemokraciaVoteStatus);
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
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteStatusCREATED"
                          value={'CREATED'}
                        >
                          {t('enumerations.EdemokraciaVoteStatus.CREATED', { defaultValue: 'CREATED' })}
                        </MenuItem>
                        <MenuItem
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteStatusPENDING"
                          value={'PENDING'}
                        >
                          {t('enumerations.EdemokraciaVoteStatus.PENDING', { defaultValue: 'PENDING' })}
                        </MenuItem>
                        <MenuItem
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteStatusACTIVE"
                          value={'ACTIVE'}
                        >
                          {t('enumerations.EdemokraciaVoteStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                        </MenuItem>
                        <MenuItem
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteStatusCLOSED"
                          value={'CLOSED'}
                        >
                          {t('enumerations.EdemokraciaVoteStatus.CLOSED', { defaultValue: 'CLOSED' })}
                        </MenuItem>
                      </TextField>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <AssociationButton
                        id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateButtonNavigate"
                        editMode={editMode}
                        navigateAction={(target) => buttonNavigateDebateAction(data, target)}
                        fetchCall={async () =>
                          await adminVoteDefinitionServiceImpl.getDebate(data, {
                            _mask: '{}',
                          })
                        }
                      >
                        {t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.debate', {
                          defaultValue: 'Debate',
                        })}
                        <MdiIcon path="arrow-right" />
                      </AssociationButton>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <DateTimePicker
                        ampm={false}
                        ampmInClock={false}
                        renderInput={(props: any) => (
                          <TextField
                            required
                            {...props}
                            id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupCreated"
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            error={!!validation.get('created')}
                            helperText={validation.get('created')}
                          />
                        )}
                        label={
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.created', {
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

                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="description"
                        id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupDescription"
                        label={
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.description', {
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
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid container item xs={12} sm={12}>
              <ModeledTabs
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarYesnovote',
                    name: 'yesnovote',
                    label: 'Yes / No vote',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarYesnoabstainvote',
                    name: 'yesnoabstainvote',
                    label: 'Yes / No / Abstain vote',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarSelectanswervote',
                    name: 'selectanswervote',
                    label: 'Select answer vote',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarRatingvote',
                    name: 'ratingvote',
                    label: 'Rating vote',
                  },
                ]}
              >
                {!data.isNotYesNoType && (
                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarYesnovoteYesnovote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteYesNoAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.yesnovote.yesnovote.voteYesNo',
                            { defaultValue: 'VoteYesNo' },
                          )}
                        </Button>
                      </Grid>
                    </Grid>
                  </Grid>
                )}
                {!data.isNotYesNoAbstainType && (
                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarYesnoabstainvoteYesnoabstainvote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoAbstainButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteYesNoAbstainAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.yesnoabstainvote.yesnoabstainvote.voteYesNoAbstain',
                            { defaultValue: 'VoteYesNoAbstain' },
                          )}
                        </Button>
                      </Grid>
                    </Grid>
                  </Grid>
                )}
                {!data.isNotSelectAnswerType && (
                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarSelectanswervoteSelectanswervote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteSelectAnswerButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteSelectAnswerAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.selectanswervote.selectanswervote.voteSelectAnswer',
                            { defaultValue: 'VoteSelectAnswer' },
                          )}
                        </Button>
                      </Grid>
                    </Grid>
                  </Grid>
                )}
                {!data.isNotRatingType && (
                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewTabBarRatingvoteRatingvote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteRatingButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteRatingAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.ratingvote.ratingvote.voteRating',
                            { defaultValue: 'VoteRating' },
                          )}
                        </Button>
                      </Grid>
                    </Grid>
                  </Grid>
                )}
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
