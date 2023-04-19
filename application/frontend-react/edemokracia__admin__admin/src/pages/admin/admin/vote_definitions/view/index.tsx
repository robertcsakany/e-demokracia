//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.voteDefinitions#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: voteDefinitions
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, InputAdornment, MenuItem, TextField } from '@mui/material';
import {
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { DateTimePicker } from '@mui/x-date-pickers';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../../components';
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
import { useConfirmationBeforeChange } from '../../../../../hooks';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteDefinition,
  EdemokraciaVoteStatus,
} from '../../../../../generated/data-api';
import {
  adminAdminServiceForVoteDefinitionsImpl,
  adminVoteDefinitionServiceImpl,
} from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminAdminVoteDefinitionsView } from './hooks/useAdminAdminVoteDefinitionsView';
import {
  useAdminVoteDefinitionVoteYesNoAbstainAction,
  usePageRefreshVoteDefinitionsAction,
  usePageDeleteVoteDefinitionsAction,
  usePageEditVoteDefinitionsAction,
  useAdminVoteDefinitionVoteYesNoAction,
  useButtonNavigateDebateAction,
  useAdminVoteDefinitionVoteSelectAnswerAction,
  useAdminVoteDefinitionVoteRatingAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.voteDefinitions#View
 * Is Access: true
 * Is Dashboard: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminAdminVoteDefinitionsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const AdminVoteDefinitionVoteYesNoAbstainAction = useAdminVoteDefinitionVoteYesNoAbstainAction();
  const pageRefreshVoteDefinitionsAction = usePageRefreshVoteDefinitionsAction();
  const pageDeleteVoteDefinitionsAction = usePageDeleteVoteDefinitionsAction();
  const pageEditVoteDefinitionsAction = usePageEditVoteDefinitionsAction();
  const AdminVoteDefinitionVoteYesNoAction = useAdminVoteDefinitionVoteYesNoAction();
  const buttonNavigateDebateAction = useButtonNavigateDebateAction();
  const AdminVoteDefinitionVoteSelectAnswerAction = useAdminVoteDefinitionVoteSelectAnswerAction();
  const AdminVoteDefinitionVoteRatingAction = useAdminVoteDefinitionVoteRatingAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const { queryCustomizer } = useAdminAdminVoteDefinitionsView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminVoteDefinitionStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminAdminVoteDefinitionsView))`,
  );
  const handleDeleteError = useErrorHandler<AdminVoteDefinitionStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminAdminVoteDefinitionsView))`,
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

  const title: string = t('edemokracia.admin.Admin.voteDefinitions.View', {
    defaultValue: 'View / Edit Vote Definition',
  });

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
      const res = await adminVoteDefinitionServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as AdminVoteDefinitionStored,
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

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminVoteDefinitionServiceImpl.update(payloadDiff);

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
      await adminVoteDefinitionServiceImpl.delete(data as AdminVoteDefinitionStored);

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
    setValidation(new Map<keyof AdminVoteDefinitionStored, string>());
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
                pageDeleteVoteDefinitionsAction(data, () => {
                  back();
                })
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewGroup">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="title"
                        id="TextInputedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewGroupTitle"
                        label={
                          t('edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.group.title', {
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
                        renderInput={(props: any) => (
                          <TextField
                            required
                            {...props}
                            id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewGroupCloseAt"
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            error={!!validation.get('closeAt')}
                            helperText={validation.get('closeAt')}
                          />
                        )}
                        label={
                          t('edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.group.closeAt', {
                            defaultValue: 'CloseAt',
                          }) as string
                        }
                        value={serviceDateToUiDate(data.closeAt ?? null)}
                        disabled={false || !isFormUpdateable()}
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
                        id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewGroupStatus"
                        label={
                          t('edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.group.status', {
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
                        id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateButtonNavigate"
                        editMode={editMode}
                        navigateAction={(target) => buttonNavigateDebateAction(data, target)}
                        owner={data}
                        fetchCall={async (owner: JudoIdentifiable<any>) =>
                          adminVoteDefinitionServiceImpl.getDebate(owner, {
                            _mask: '{}',
                          })
                        }
                      >
                        {t('edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.group.debate', {
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
                            id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewGroupCreated"
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            error={!!validation.get('created')}
                            helperText={validation.get('created')}
                          />
                        )}
                        label={
                          t('edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.group.created', {
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

                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="description"
                        id="TextAreaedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewGroupDescription"
                        label={
                          t('edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.group.description', {
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
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBar"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarYesnovote',
                    name: 'yesnovote',
                    label: 'Yes / No vote',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarYesnoabstainvote',
                    name: 'yesnoabstainvote',
                    label: 'Yes / No / Abstain vote',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarSelectanswervote',
                    name: 'selectanswervote',
                    label: 'Select answer vote',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarRatingvote',
                    name: 'ratingvote',
                    label: 'Rating vote',
                  },
                ]}
              >
                {!data.isNotYesNoType && (
                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarYesnovoteYesnovote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteYesNoAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.tabBar.yesnovote.yesnovote.voteYesNo',
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
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarYesnoabstainvoteYesnoabstainvote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoAbstainButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteYesNoAbstainAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.tabBar.yesnoabstainvote.yesnoabstainvote.voteYesNoAbstain',
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
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarSelectanswervoteSelectanswervote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteSelectAnswerButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteSelectAnswerAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.tabBar.selectanswervote.selectanswervote.voteSelectAnswer',
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
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewDefaultVoteDefinitionViewTabBarRatingvoteRatingvote"
                      container
                      direction="row"
                      alignItems="flex-start"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <Button
                          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteRatingButtonCallOperation"
                          onClick={() => AdminVoteDefinitionVoteRatingAction(data, () => fetchData())}
                          disabled={isLoading || editMode}
                        >
                          <MdiIcon path="chevron_right" />
                          {t(
                            'edemokracia.admin.Admin.voteDefinitions.VoteDefinition.View.tabBar.ratingvote.ratingvote.voteRating',
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
