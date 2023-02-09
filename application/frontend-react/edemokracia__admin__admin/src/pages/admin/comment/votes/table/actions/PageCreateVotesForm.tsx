///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Comment::votes#PageCreate
// Owner Page name: edemokracia::admin::Comment.votes#Table
// Action: CreateAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Button,
  IconButton,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Paper,
  Box,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Card,
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridToolbarContainer,
  GridRenderCellParams,
  GridRowParams,
  GridColDef,
} from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
import {
  MdiIcon,
  ModeledTabs,
  TrinaryLogicCombobox,
  AggregationInput,
  useSnackbar,
  useRangeDialog,
  columnsActionCalculator,
} from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  EdemokraciaSimpleVoteType,
  AdminComment,
  AdminSimpleVote,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../generated/data-api';
import { adminCommentServiceForVotesImpl, adminSimpleVoteServiceImpl } from '../../../../../../generated/data-axios';
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig } from '../../../../../../config';

export interface PageCreateVotesFormProps {
  successCallback: (result: AdminSimpleVoteStored) => void;
  cancel: () => void;
  owner: AdminSimpleVoteStored;
}

export function PageCreateVotesForm({ successCallback, cancel, owner }: PageCreateVotesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminSimpleVote>({} as unknown as AdminSimpleVote);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );

  const title: string = t('edemokracia.admin.Comment.votes.Create.Vote', { defaultValue: 'Create Vote' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminSimpleVoteServiceImpl.getTemplate();
      setData(res);
    } finally {
      // ignore potential errors for now
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCommentServiceForVotesImpl.createVotes(owner, data);

      if (res) {
        successCallback(res);
      }
    } catch (error) {
      errorHandling(error, enqueueSnackbar, { setValidation });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          aria-label="close"
          onClick={() => cancel()}
          sx={{
            position: 'absolute',
            right: 8,
            top: 8,
            color: (theme) => theme.palette.grey[500],
          }}
        >
          <MdiIcon path="close" />
        </IconButton>
      </DialogTitle>
      <DialogContent dividers>
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
          <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
            <Grid item xs={12} sm={4.0}>
              <DateTimePicker
                renderInput={(props: any) => (
                  <TextField {...props} error={!!validation.get('created')} helperText={validation.get('created')} />
                )}
                label={
                  t('edemokracia.admin.Comment.votes.Create.Vote.group.created', { defaultValue: 'Created' }) as string
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

            <Grid item xs={12} sm={4.0}>
              <TextField
                name="type"
                id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Comment.votes/Create/default/Create_Vote/group/type"
                label={t('edemokracia.admin.Comment.votes.Create.Vote.group.type', { defaultValue: 'Type' }) as string}
                select
                value={data.type}
                error={!!validation.get('type')}
                helperText={validation.get('type')}
                onChange={(event) => {
                  storeDiff('type', event.target.value as EdemokraciaSimpleVoteType);
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
                <MenuItem value={'UP'}>
                  {t('enumerations.EdemokraciaSimpleVoteType.UP', { defaultValue: 'UP' })}
                </MenuItem>
                <MenuItem value={'DOWN'}>
                  {t('enumerations.EdemokraciaSimpleVoteType.DOWN', { defaultValue: 'DOWN' })}
                </MenuItem>
              </TextField>
            </Grid>
          </Grid>

          <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}></Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button variant="text" onClick={() => cancel()} disabled={isLoading}>
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button variant="contained" onClick={() => saveData()} disabled={isLoading}>
          {t('judo.pages.create', { defaultValue: 'Create' })}
        </Button>
      </DialogActions>
    </>
  );
}
