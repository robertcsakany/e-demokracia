///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::VoteDefinition::voteRating#ButtonCallOperation
// Action: CallOperationAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  DialogTitle,
  DialogContent,
  CardContent,
  IconButton,
  Button,
  DialogContentText,
  DialogActions,
  Card,
} from '@mui/material';
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
import { MdiIcon, ModeledTabs } from '../../../../../../../components';
import { columnsActionCalculator } from '../../../../../../../components/table';
import { useRangeDialog } from '../../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../../components/widgets';
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
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';

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

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<RatingVoteInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminVoteDefinitionVoteRatingForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<RatingVoteInput>({} as unknown as RatingVoteInput);
  const [validation, setValidation] = useState<Map<keyof RatingVoteInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof RatingVoteInput, any>>(
    {} as unknown as Record<keyof RatingVoteInput, any>,
  );
  const storeDiff: (attributeName: keyof RatingVoteInput, value: any) => void = useCallback(
    (attributeName: keyof RatingVoteInput, value: any) => {
      payloadDiff[attributeName] = value;
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
      await adminVoteDefinitionServiceImpl.voteRating(owner, data);

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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteRatingButtonCallOperation-dialog-close"
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
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteRatingButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableEdemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteRatingButtonCallOperation-action-form-action-submit"
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
