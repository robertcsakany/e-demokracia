///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::VoteDefinition::voteRating#ButtonCallOperation
// Action: CallOperationAction

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
  CardContent,
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSortItem,
  GridSelectionModel,
  GridToolbarContainer,
  GridRenderCellParams,
  GridRowParams,
  GridColDef,
} from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import {
  MdiIcon,
  ModeledTabs,
  TrinaryLogicCombobox,
  AggregationInput,
  useSnackbar,
  useRangeDialog,
  columnsActionCalculator,
} from '../../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import {
  AdminVoteDefinitionQueryCustomizer,
  RatingVoteInput,
  AdminVoteDefinitionStored,
  RatingVoteInputQueryCustomizer,
  AdminVoteDefinition,
  RatingVoteInputStored,
} from '../../../../../../../generated/data-api';
import { ratingVoteInputServiceImpl, adminVoteDefinitionServiceImpl } from '../../../../../../../generated/data-axios';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../../config';

export interface AdminVoteDefinitionVoteRatingFormProps {
  successCallback: () => void;
  cancel: () => void;
  owner: AdminVoteDefinitionStored;
}

export function AdminVoteDefinitionVoteRatingForm({
  successCallback,
  cancel,
  owner,
}: AdminVoteDefinitionVoteRatingFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<RatingVoteInput>({} as unknown as RatingVoteInput);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.VoteDefinition.voteRating.Input', { defaultValue: 'TransferObject Form' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await ratingVoteInputServiceImpl.getTemplate();
      setData(res);
    } catch (e) {
      console.error(e);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  // TODO: implement confirmation handling
  const submit = async () => {
    setIsLoading(true);

    try {
      await adminVoteDefinitionServiceImpl.voteRating(owner, data);

      successCallback();
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
        <Grid
          container
          xs={12}
          sm={12}
          spacing={2}
          direction="column"
          alignItems="stretch"
          justifyContent="flex-start"
        ></Grid>
      </DialogContent>
      <DialogActions>
        <Button variant="text" onClick={() => cancel()} disabled={isLoading}>
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <Button variant="contained" onClick={() => submit()} disabled={isLoading}>
          {t('judo.pages.submit', { defaultValue: 'Submit' }) as string}
        </Button>
      </DialogActions>
    </>
  );
}
