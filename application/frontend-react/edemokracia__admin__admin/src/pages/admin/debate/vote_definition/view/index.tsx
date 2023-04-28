//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Debate.voteDefinition#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: voteDefinition
// Page DataElement owner name: edemokracia::admin::Debate

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, InputAdornment, MenuItem, TextField } from '@mui/material';
import { LoadingButton } from '@mui/lab';
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
  uiTimeToServiceTime,
  serviceTimeToUiTime,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminDebate,
  EdemokraciaVoteType,
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
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
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
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = [
        'closeAt',

        'created',
      ];
      const timeTypes: string[] = [];
      if (dateTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiDateToServiceDate(value);
      } else if (dateTimeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = value;
      } else if (timeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiTimeToServiceTime(value);
      } else {
        payloadDiff[attributeName] = value;
      }
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminVoteDefinition, string>>(new Map());

  const title: string = t('edemokracia.admin.Debate.voteDefinition.View', {
    defaultValue: 'View / Edit Vote Definition',
  });

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
    setValidation(new Map<keyof AdminVoteDefinition, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid className="page-action" item>
            <LoadingButton
              loading={isLoading}
              loadingPosition="start"
              id="page-action-refresh"
              startIcon={<MdiIcon path="refresh" />}
              onClick={() => fetchData()}
            >
              <span>{t('judo.pages.refresh', { defaultValue: 'Refresh' })}</span>
            </LoadingButton>
          </Grid>
        )}
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid
            className="relation-page-data"
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

                    <Grid item xs={12} sm={12}>
                      <DateTimePicker
                        ampm={false}
                        ampmInClock={false}
                        className={!editMode ? 'JUDO-viewMode' : undefined}
                        slotProps={{
                          textField: {
                            id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupCloseAt',
                            helperText: validation.get('closeAt'),
                            error: !!validation.get('closeAt'),
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
                            const copy = new Map<keyof AdminVoteDefinition, string>(prevValidation);
                            copy.set(
                              'closeAt',
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
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.closeAt', {
                            defaultValue: 'CloseAt',
                          }) as string
                        }
                        value={serviceDateToUiDate(data.closeAt ?? null)}
                        disabled={false || !isFormUpdateable()}
                        onChange={(newValue: Date) => {
                          setEditMode(true);
                          storeDiff('closeAt', newValue);
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
                        disabled={false || !isFormUpdateable()}
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
                        owner={data}
                        fetchCall={async (owner: JudoIdentifiable<any>) =>
                          adminVoteDefinitionServiceImpl.getDebate(owner, {
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
                        className={!editMode ? 'JUDO-viewMode' : undefined}
                        slotProps={{
                          textField: {
                            id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewDefaultVoteDefinitionViewGroupCreated',
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
                            const copy = new Map<keyof AdminVoteDefinition, string>(prevValidation);
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
                          t('edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.group.created', {
                            defaultValue: 'Created',
                          }) as string
                        }
                        value={serviceDateToUiDate(data.created ?? null)}
                        disabled={false || !isFormUpdateable()}
                        onChange={(newValue: Date) => {
                          setEditMode(true);
                          storeDiff('created', newValue);
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
                      {!data.isNotYesNoType && (
                        <Grid item xs={12} sm={12} md={4.0}>
                          <LoadingButton
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoButtonCallOperation"
                            loading={isLoading}
                            startIcon={<MdiIcon path="chevron_right" />}
                            loadingPosition="start"
                            onClick={() => AdminVoteDefinitionVoteYesNoAction(data, () => fetchData())}
                            disabled={!data.isYesNoType || editMode}
                          >
                            <span>
                              {t(
                                'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.yesnovote.yesnovote.voteYesNo',
                                { defaultValue: 'Vote' },
                              )}
                            </span>
                          </LoadingButton>
                        </Grid>
                      )}
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
                      {!data.isNotYesNoAbstainType && (
                        <Grid item xs={12} sm={12} md={4.0}>
                          <LoadingButton
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoAbstainButtonCallOperation"
                            loading={isLoading}
                            startIcon={<MdiIcon path="chevron_right" />}
                            loadingPosition="start"
                            onClick={() => AdminVoteDefinitionVoteYesNoAbstainAction(data, () => fetchData())}
                            disabled={!data.isYesNoAbstainType || editMode}
                          >
                            <span>
                              {t(
                                'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.yesnoabstainvote.yesnoabstainvote.voteYesNoAbstain',
                                { defaultValue: 'VoteYesNoAbstain' },
                              )}
                            </span>
                          </LoadingButton>
                        </Grid>
                      )}
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
                      {!data.isNotSelectAnswerType && (
                        <Grid item xs={12} sm={12} md={4.0}>
                          <LoadingButton
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteSelectAnswerButtonCallOperation"
                            loading={isLoading}
                            startIcon={<MdiIcon path="chevron_right" />}
                            loadingPosition="start"
                            onClick={() => AdminVoteDefinitionVoteSelectAnswerAction(data, () => fetchData())}
                            disabled={!data.isSelectAnswerType || editMode}
                          >
                            <span>
                              {t(
                                'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.selectanswervote.selectanswervote.voteSelectAnswer',
                                { defaultValue: 'VoteSelectAnswer' },
                              )}
                            </span>
                          </LoadingButton>
                        </Grid>
                      )}
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
                      {!data.isNotRatingType && (
                        <Grid item xs={12} sm={12} md={4.0}>
                          <LoadingButton
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDebateVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteRatingButtonCallOperation"
                            loading={isLoading}
                            startIcon={<MdiIcon path="chevron_right" />}
                            loadingPosition="start"
                            onClick={() => AdminVoteDefinitionVoteRatingAction(data, () => fetchData())}
                            disabled={!data.isRatingType || editMode}
                          >
                            <span>
                              {t(
                                'edemokracia.admin.Debate.voteDefinition.VoteDefinition.View.tabBar.ratingvote.ratingvote.voteRating',
                                { defaultValue: 'VoteRating' },
                              )}
                            </span>
                          </LoadingButton>
                        </Grid>
                      )}
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
