//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Pro.votes#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: votes
// Page DataElement owner name: edemokracia::admin::Pro

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
  AdminProStored,
  EdemokraciaSimpleVoteType,
  AdminPro,
  AdminSimpleVote,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminProServiceImpl, adminSimpleVoteServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminProVotesView } from './hooks/useAdminProVotesView';
import { usePageRefreshVotesAction, usePageEditVotesAction, usePageDeleteVotesAction } from './actions';

/**
 * Name: edemokracia::admin::Pro.votes#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminProVotesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshVotesAction = usePageRefreshVotesAction();
  const pageEditVotesAction = usePageEditVotesAction();
  const pageDeleteVotesAction = usePageDeleteVotesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminProVotesView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminSimpleVoteStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminProVotesView))`,
  );
  const handleDeleteError = useErrorHandler<AdminSimpleVoteStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminProVotesView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminSimpleVoteStored>({} as unknown as AdminSimpleVoteStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminSimpleVoteStored, any>>(
    {} as unknown as Record<keyof AdminSimpleVoteStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminSimpleVoteStored, value: any) => void = useCallback(
    (attributeName: keyof AdminSimpleVoteStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminSimpleVoteStored, string>>(new Map());

  const title: string = t('edemokracia.admin.Pro.votes.View', { defaultValue: 'Create / View Vote' });

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
      const res = await adminSimpleVoteServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminSimpleVote>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof AdminSimpleVoteStored, any>);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminSimpleVoteServiceImpl.update(payloadDiff);

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
      await adminSimpleVoteServiceImpl.delete(data);

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
    setValidation(new Map<keyof AdminSimpleVoteStored, string>());
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
                pageDeleteVotesAction(
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
              <Grid
                id="FlexedemokraciaAdminAdminEdemokraciaAdminProVotesViewDefaultVoteViewGroup"
                container
                direction="row"
                alignItems="flex-start"
                justifyContent="flex-start"
                spacing={2}
              >
                <Grid item xs={12} sm={12} md={4.0}>
                  <DateTimePicker
                    ampm={false}
                    ampmInClock={false}
                    renderInput={(props: any) => (
                      <TextField
                        required
                        {...props}
                        id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminProVotesViewDefaultVoteViewGroupCreated"
                        className={!editMode ? 'JUDO-viewMode' : undefined}
                        error={!!validation.get('created')}
                        helperText={validation.get('created')}
                      />
                    )}
                    label={
                      t('edemokracia.admin.Pro.votes.Vote.View.group.created', { defaultValue: 'Created' }) as string
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

                <Grid item xs={12} sm={12} md={4.0}>
                  <TextField
                    required
                    name="type"
                    id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminProVotesViewDefaultVoteViewGroupType"
                    label={t('edemokracia.admin.Pro.votes.Vote.View.group.type', { defaultValue: 'Type' }) as string}
                    value={data.type || ''}
                    className={!editMode ? 'JUDO-viewMode' : undefined}
                    disabled={false || !isFormUpdateable()}
                    error={!!validation.get('type')}
                    helperText={validation.get('type')}
                    onChange={(event) => {
                      setEditMode(true);
                      storeDiff('type', event.target.value as EdemokraciaSimpleVoteType);
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
                    <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaSimpleVoteTypeUP" value={'UP'}>
                      {t('enumerations.EdemokraciaSimpleVoteType.UP', { defaultValue: 'UP' })}
                    </MenuItem>
                    <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaSimpleVoteTypeDOWN" value={'DOWN'}>
                      {t('enumerations.EdemokraciaSimpleVoteType.DOWN', { defaultValue: 'DOWN' })}
                    </MenuItem>
                  </TextField>
                </Grid>
              </Grid>
            </Grid>

            <Grid item xs={12} sm={12}>
              <Grid
                id="FlexedemokraciaAdminAdminEdemokraciaAdminProVotesViewDefaultVoteViewGroup2"
                container
                direction="row"
                alignItems="flex-start"
                justifyContent="flex-start"
                spacing={2}
              ></Grid>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
