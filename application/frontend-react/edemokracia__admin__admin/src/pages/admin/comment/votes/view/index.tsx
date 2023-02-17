///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Comment.votes#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: votes
// Page DataElement owner name: edemokracia::admin::Comment

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
  EdemokraciaSimpleVoteType,
  AdminComment,
  AdminSimpleVote,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminCommentServiceImpl, adminSimpleVoteServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminCommentVotesView } from './hooks/useAdminCommentVotesView';
import { usePageDeleteVotesAction, usePageEditVotesAction, usePageRefreshVotesAction } from './actions';

/**
 * Name: edemokracia::admin::Comment.votes#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminCommentVotesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageDeleteVotesAction = usePageDeleteVotesAction();
  const pageEditVotesAction = usePageEditVotesAction();
  const pageRefreshVotesAction = usePageRefreshVotesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminCommentVotesView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminSimpleVoteStored>({} as unknown as AdminSimpleVoteStored);
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

  const title: string = t('edemokracia.admin.Comment.votes.View', { defaultValue: 'Create / View Vote' });

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
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
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
      errorHandling(error, enqueueSnackbar, { setValidation });
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
        {!editMode && (
          <Grid item>
            <Button onClick={() => deleteData()} disabled={isLoading || !data.__deleteable}>
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button onClick={() => setEditMode(true)} disabled={isLoading || !data.__updateable}>
              <MdiIcon path="pencil" />
              {t('judo.pages.edit', { defaultValue: 'Edit' })}
            </Button>
          </Grid>
        )}
        {editMode && (
          <Grid item>
            <Button
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
            <Button onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
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
              <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
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
                      t('edemokracia.admin.Comment.votes.Vote.group.created', { defaultValue: 'Created' }) as string
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

                <Grid item xs={12} sm={12} md={4.0}>
                  <TextField
                    name="type"
                    id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Comment.votes/View/default/Vote/group/type"
                    label={t('edemokracia.admin.Comment.votes.Vote.group.type', { defaultValue: 'Type' }) as string}
                    value={data.type || ''}
                    error={!!validation.get('type')}
                    helperText={validation.get('type')}
                    onChange={(event) => storeDiff('type', event.target.value as EdemokraciaSimpleVoteType)}
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
                    select
                  >
                    <MenuItem value={'UP'}>
                      {t('enumerations.EdemokraciaSimpleVoteType.UP', { defaultValue: 'UP' })}
                    </MenuItem>
                    <MenuItem value={'DOWN'}>
                      {t('enumerations.EdemokraciaSimpleVoteType.DOWN', { defaultValue: 'DOWN' })}
                    </MenuItem>
                  </TextField>
                </Grid>
              </Grid>
            </Grid>

            <Grid item xs={12} sm={12}>
              <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}></Grid>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
