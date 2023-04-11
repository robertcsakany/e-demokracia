///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.createDebate#Output
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: output
// Page DataElement owner name: createDebate

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import { Box, Container, Grid, Button, Card, CardContent } from '@mui/material';
import {
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
} from '@mui/x-data-grid';
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
  booleanToStringSelect,
  stringToBooleanSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig } from '../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import {
  EdemokraciaDebateStatus,
  DebateQueryCustomizer,
  Debate,
  DebateStored,
} from '../../../../../generated/data-api';
import { debateServiceImpl } from '../../../../../generated/data-axios';
import { useAdminIssueCreatedebateOutput } from './hooks/useAdminIssueCreatedebateOutput';
import { usePageRefreshOutputAction } from './actions';

/**
 * Name: edemokracia::admin::Issue.createDebate#Output
 * Is Operation Output: true
 * Type: OperationOutput
 **/
export default function AdminIssueCreatedebateOutput() {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { navigate, back } = useJudoNavigation();
  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof DebateStored, string>>(new Map());
  const { signedIdentifier } = useParams();
  const [data, setData] = useState<DebateStored>({} as unknown as DebateStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof DebateStored, any>>(
    {} as unknown as Record<keyof DebateStored, any>,
  );
  const storeDiff: (attributeName: keyof DebateStored, value: any) => void = useCallback(
    (attributeName: keyof DebateStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminIssueCreatedebateOutput();
  const pageRefreshOutputAction = usePageRefreshOutputAction();

  const title: string = t('edemokracia.admin.Issue.createDebate.Output', { defaultValue: 'Entity View' });

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await debateServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<Debate>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof DebateStored, any>);
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
    setValidation(new Map<keyof DebateStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
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
          ></Grid>
        </Box>
      </Container>
    </>
  );
}
