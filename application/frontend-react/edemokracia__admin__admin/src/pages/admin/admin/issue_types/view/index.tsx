//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.issueTypes#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: issueTypes
// Page DataElement owner name: edemokracia::admin::Admin

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent, InputAdornment, MenuItem, TextField } from '@mui/material';
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
  uiTimeToServiceTime,
  serviceTimeToUiTime,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { useConfirmationBeforeChange } from '../../../../../hooks';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  EdemokraciaVoteType,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminIssueTypeStored,
} from '../../../../../generated/data-api';
import { adminAdminServiceForIssueTypesImpl, adminIssueTypeServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminAdminIssueTypesView } from './hooks/useAdminAdminIssueTypesView';
import { usePageRefreshIssueTypesAction, usePageEditIssueTypesAction, usePageDeleteIssueTypesAction } from './actions';

/**
 * Name: edemokracia::admin::Admin.issueTypes#View
 * Is Access: true
 * Is Dashboard: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminAdminIssueTypesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageRefreshIssueTypesAction = usePageRefreshIssueTypesAction();
  const pageEditIssueTypesAction = usePageEditIssueTypesAction();
  const pageDeleteIssueTypesAction = usePageDeleteIssueTypesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const { queryCustomizer } = useAdminAdminIssueTypesView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminIssueType>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminAdminIssueTypesView))`,
  );
  const handleDeleteError = useErrorHandler<AdminIssueType>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminAdminIssueTypesView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueTypeStored>({} as unknown as AdminIssueTypeStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueTypeStored, any>>(
    {} as unknown as Record<keyof AdminIssueTypeStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueTypeStored, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueTypeStored, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = [];
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
  const [validation, setValidation] = useState<Map<keyof AdminIssueType, string>>(new Map());

  const title: string = t('edemokracia.admin.Admin.issueTypes.View', { defaultValue: 'Issue Type View/Edit' });

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
      const res = await adminIssueTypeServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as AdminIssueTypeStored,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof AdminIssueTypeStored, any>);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueTypeServiceImpl.update(payloadDiff);

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
      await adminIssueTypeServiceImpl.delete(data as AdminIssueTypeStored);

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
    setValidation(new Map<keyof AdminIssueType, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {editMode && isFormUpdateable() && (
          <Grid className="page-action" item>
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
          <Grid className="page-action" item>
            <Button id="page-action-edit-save" onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid className="page-action" item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
            </Button>
          </Grid>
        )}
        {!editMode && isFormDeleteable() && (
          <Grid className="page-action" item>
            <Button
              id="page-action-delete"
              onClick={() =>
                pageDeleteIssueTypesAction(data, () => {
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesViewDefaultIssueTypeViewGroup">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="title"
                        id="TextInputedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesViewDefaultIssueTypeViewGroupTitle"
                        label={
                          t('edemokracia.admin.Admin.issueTypes.IssueType.View.group.title', {
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
                      <TextField
                        name="voteType"
                        id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesViewDefaultIssueTypeViewGroupVoteType"
                        label={
                          t('edemokracia.admin.Admin.issueTypes.IssueType.View.group.voteType', {
                            defaultValue: 'VoteType',
                          }) as string
                        }
                        value={data.voteType || ''}
                        className={!editMode ? 'JUDO-viewMode' : undefined}
                        disabled={false || !isFormUpdateable()}
                        error={!!validation.get('voteType')}
                        helperText={validation.get('voteType')}
                        onChange={(event) => {
                          setEditMode(true);
                          storeDiff('voteType', event.target.value as EdemokraciaVoteType);
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
                        <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeYESNO" value={'YES_NO'}>
                          {t('enumerations.EdemokraciaVoteType.YES_NO', { defaultValue: 'YES_NO' })}
                        </MenuItem>
                        <MenuItem
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeYESNOABSTAIN"
                          value={'YES_NO_ABSTAIN'}
                        >
                          {t('enumerations.EdemokraciaVoteType.YES_NO_ABSTAIN', { defaultValue: 'YES_NO_ABSTAIN' })}
                        </MenuItem>
                        <MenuItem
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeSELECTANSWER"
                          value={'SELECT_ANSWER'}
                        >
                          {t('enumerations.EdemokraciaVoteType.SELECT_ANSWER', { defaultValue: 'SELECT_ANSWER' })}
                        </MenuItem>
                        <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeRATE" value={'RATE'}>
                          {t('enumerations.EdemokraciaVoteType.RATE', { defaultValue: 'RATE' })}
                        </MenuItem>
                        <MenuItem
                          id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeNOVOTE"
                          value={'NO_VOTE'}
                        >
                          {t('enumerations.EdemokraciaVoteType.NO_VOTE', { defaultValue: 'NO_VOTE' })}
                        </MenuItem>
                      </TextField>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <TextField
                        required
                        name="description"
                        id="TextAreaedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesViewDefaultIssueTypeViewGroupDescription"
                        label={
                          t('edemokracia.admin.Admin.issueTypes.IssueType.View.group.description', {
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
          </Grid>
        </Box>
      </Container>
    </>
  );
}
