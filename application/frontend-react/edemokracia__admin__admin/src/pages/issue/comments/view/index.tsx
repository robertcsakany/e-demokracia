///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::Issue.comments#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: comments
// Page DataElement owner name: edemokracia::Issue

import { useEffect, useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Button,
  Card,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Paper,
} from '@mui/material';
import { DataGrid, GridRowId, GridSortModel, GridToolbarContainer, GridRowParams } from '@mui/x-data-grid';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import { useParams } from 'react-router-dom';
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
} from '../../../../components';
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../utilities';
import { baseTableConfig } from '../../../../config';
import { Comment, CommentStored, Issue, CommentQueryCustomizer, IssueStored } from '../../../../generated/data-api';
import { issueServiceImpl, commentServiceImpl } from '../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../theme';
import { useIssueCommentsView } from './hooks/useIssueCommentsView';
import { usePageBackCommentsAction, usePageRefreshCommentsAction } from './actions';

/**
 * Name: edemokracia::Issue.comments#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function IssueCommentsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageBackCommentsAction = usePageBackCommentsAction();
  const pageRefreshCommentsAction = usePageRefreshCommentsAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useIssueCommentsView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<CommentStored>({} as unknown as CommentStored);
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

  const title: string = t('edemokracia.Issue.comments.Entity.View', { defaultValue: 'Entity View' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await commentServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<Comment>,
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
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch"></Grid>
        </Box>
      </Container>
    </>
  );
}
