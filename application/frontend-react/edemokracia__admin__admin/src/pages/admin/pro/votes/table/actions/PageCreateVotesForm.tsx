///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::votes#PageCreate
// Action: CreateAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  DialogContent,
  DialogTitle,
  CardContent,
  IconButton,
  Button,
  DialogContentText,
  TextField,
  DialogActions,
  MenuItem,
  InputAdornment,
  Card,
} from '@mui/material';
import { DateTimePicker } from '@mui/x-date-pickers';
import {
  GridRowId,
  GridRowParams,
  GridRenderCellParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridColDef,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import { useSnackbar } from 'notistack';
import { v1 as uuidv1 } from 'uuid';
import { MdiIcon, ModeledTabs } from '../../../../../../components';
import { columnsActionCalculator } from '../../../../../../components/table';
import { useRangeDialog } from '../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../components/widgets';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminProStored,
  EdemokraciaSimpleVoteType,
  AdminPro,
  AdminSimpleVote,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../generated/data-api';
import { adminProServiceForVotesImpl, adminSimpleVoteServiceImpl } from '../../../../../../generated/data-axios';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../custom';

export interface PageCreateVotesFormProps {
  successCallback: (result: AdminSimpleVoteStored) => void;
  cancel: () => void;
  owner: JudoIdentifiable<AdminSimpleVote>;
}

export function PageCreateVotesForm({ successCallback, cancel, owner }: PageCreateVotesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleCreateError = useErrorHandler<AdminSimpleVote>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Create)(component=PageCreateVotesForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminSimpleVote>({
    __referenceId: uuidv1(),
  } as unknown as AdminSimpleVote);
  const [validation, setValidation] = useState<Map<keyof AdminSimpleVote, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof AdminSimpleVote, any>>(
    {} as unknown as Record<keyof AdminSimpleVote, any>,
  );
  const storeDiff: (attributeName: keyof AdminSimpleVote, value: any) => void = useCallback(
    (attributeName: keyof AdminSimpleVote, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Pro.votes.Create', { defaultValue: 'Create Vote' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminSimpleVoteServiceImpl.getTemplate();
      setData((prevData) => ({ ...prevData, ...res }));
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminProServiceForVotesImpl.createVotes(owner, data);

      if (res) {
        successCallback(res);
      }
    } catch (error) {
      handleCreateError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminProVotesTableEdemokraciaAdminAdminEdemokraciaAdminProVotesPageCreate-dialog-close"
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
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch" justifyContent="flex-start">
          <Grid item xs={12} sm={12}>
            <Grid
              id="FlexedemokraciaAdminAdminEdemokraciaAdminProVotesCreateDefaultVoteFormGroup"
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
                      id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminProVotesCreateDefaultVoteFormGroupCreated"
                      className={!editMode ? 'JUDO-viewMode' : undefined}
                      error={!!validation.get('created')}
                      helperText={validation.get('created')}
                    />
                  )}
                  label={
                    t('edemokracia.admin.Pro.votes.Vote.Form.group.created', { defaultValue: 'Created' }) as string
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

              <Grid item xs={12} sm={12} md={4.0}>
                <TextField
                  required
                  name="type"
                  id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminProVotesCreateDefaultVoteFormGroupType"
                  label={t('edemokracia.admin.Pro.votes.Vote.Form.group.type', { defaultValue: 'Type' }) as string}
                  value={data.type || ''}
                  className={!editMode ? 'JUDO-viewMode' : undefined}
                  disabled={false}
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
              id="FlexedemokraciaAdminAdminEdemokraciaAdminProVotesCreateDefaultVoteFormGroup2"
              container
              direction="row"
              alignItems="flex-start"
              justifyContent="flex-start"
              spacing={2}
            ></Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminProVotesTableEdemokraciaAdminAdminEdemokraciaAdminProVotesPageCreate-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminProVotesTableEdemokraciaAdminAdminEdemokraciaAdminProVotesPageCreate-action-form-action-create"
          variant="contained"
          onClick={() => saveData()}
          disabled={isLoading}
        >
          {t('judo.pages.create', { defaultValue: 'Create' })}
        </Button>
      </DialogActions>
    </>
  );
}
