//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx
// Template file: actor/src/pages/actions/actionForm.tsx.hbs

//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx
// Template file: actor/src/pages/actions/actionForm.tsx.hbs
// Action: CallOperationAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  Button,
  ButtonGroup,
  Card,
  CardContent,
  ClickAwayListener,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Grow,
  IconButton,
  InputAdornment,
  MenuItem,
  MenuList,
  Paper,
  Popper,
  TextField,
} from '@mui/material';
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
import { ComponentProxy } from '@pandino/react-hooks';
import { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from 'notistack';
import { MdiIcon, ModeledTabs } from '../../../../../../../components';
import { columnsActionCalculator } from '../../../../../../../components/table';
import { useRangeDialog } from '../../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  BinaryInput,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../../components/widgets';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteEntry,
  EdemokraciaYesNoVoteValue,
  YesNoVoteInputQueryCustomizer,
  AdminVoteDefinition,
  AdminVoteEntryStored,
  YesNoVoteInput,
  YesNoVoteInputStored,
} from '../../../../../../../generated/data-api';
import { yesNoVoteInputServiceImpl, adminVoteDefinitionServiceImpl } from '../../../../../../../generated/data-axios';
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
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';
import { useL10N } from '../../../../../../../l10n/l10n-context';

export interface AdminVoteDefinitionVoteYesNoFormProps {
  successCallback: () => void;
  cancel: () => void;
  owner: AdminVoteDefinitionStored;
}

export function AdminVoteDefinitionVoteYesNoForm({
  successCallback,
  cancel,
  owner,
}: AdminVoteDefinitionVoteYesNoFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<YesNoVoteInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminVoteDefinitionVoteYesNoForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<YesNoVoteInput>({} as unknown as YesNoVoteInput);
  const [validation, setValidation] = useState<Map<keyof YesNoVoteInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof YesNoVoteInput, any>>(
    {} as unknown as Record<keyof YesNoVoteInput, any>,
  );
  const storeDiff: (attributeName: keyof YesNoVoteInput, value: any) => void = useCallback(
    (attributeName: keyof YesNoVoteInput, value: any) => {
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
  const title: string = t('edemokracia.admin.VoteDefinition.voteYesNo.Input', { defaultValue: 'Vote Yes / No' });

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await yesNoVoteInputServiceImpl.getTemplate();
      setData(res);
      setPayloadDiff({
        ...res,
      } as Record<keyof YesNoVoteInput, any>);
    } catch (e) {
      handleFetchError(e);
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
      await adminVoteDefinitionServiceImpl.voteYesNo(owner, payloadDiff);

      successCallback();
    } catch (error) {
      handleActionError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteEntryVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoButtonCallOperation-dialog-close"
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
            <TextField
              name="value"
              id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoInputDefaultYesNoVoteInputFormValue"
              autoFocus
              label={
                t('edemokracia.admin.VoteDefinition.voteYesNo.YesNoVoteInput.Form.value', {
                  defaultValue: 'Vote',
                }) as string
              }
              value={data.value || ''}
              className={!editMode ? 'JUDO-viewMode' : undefined}
              disabled={false || !isFormUpdateable()}
              error={!!validation.get('value')}
              helperText={validation.get('value')}
              onChange={(event) => {
                setEditMode(true);
                storeDiff('value', event.target.value as EdemokraciaYesNoVoteValue);
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
              <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaYesNoVoteValueYES" value={'YES'}>
                {t('enumerations.EdemokraciaYesNoVoteValue.YES', { defaultValue: 'YES' })}
              </MenuItem>
              <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaYesNoVoteValueNO" value={'NO'}>
                {t('enumerations.EdemokraciaYesNoVoteValue.NO', { defaultValue: 'NO' })}
              </MenuItem>
            </TextField>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteEntryVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteEntryVoteDefinitionViewEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteYesNoButtonCallOperation-action-form-action-submit"
          variant="contained"
          onClick={() => submit()}
          disabled={isLoading}
        >
          {t('judo.pages.submit', { defaultValue: 'Submit' }) as string}
        </Button>
      </DialogActions>
    </>
  );
}
