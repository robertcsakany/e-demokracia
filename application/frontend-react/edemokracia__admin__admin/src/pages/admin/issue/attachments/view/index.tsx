///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.attachments#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: attachments
// Page DataElement owner name: edemokracia::admin::Issue

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
  Divider,
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
  EdemokraciaAttachmentType,
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueStored,
  AdminIssueAttachmentStored,
  AdminIssueAttachmentQueryCustomizer,
} from '../../../../../generated/data-api';
import { adminIssueServiceImpl, adminIssueAttachmentServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminIssueAttachmentsView } from './hooks/useAdminIssueAttachmentsView';
import {
  usePageEditAttachmentsAction,
  usePageRefreshAttachmentsAction,
  usePageDeleteAttachmentsAction,
} from './actions';

/**
 * Name: edemokracia::admin::Issue.attachments#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminIssueAttachmentsView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const pageEditAttachmentsAction = usePageEditAttachmentsAction();
  const pageRefreshAttachmentsAction = usePageRefreshAttachmentsAction();
  const pageDeleteAttachmentsAction = usePageDeleteAttachmentsAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const { queryCustomizer } = useAdminIssueAttachmentsView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueAttachmentStored>({} as unknown as AdminIssueAttachmentStored);
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

  const title: string = t('edemokracia.admin.Issue.attachments.View', { defaultValue: 'View / Edit Attachment' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueAttachmentServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminIssueAttachment>,
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
      const res = await adminIssueAttachmentServiceImpl.update(payloadDiff);

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
      await adminIssueAttachmentServiceImpl.delete(data);

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
            <Button onClick={() => deleteData()} disabled={isLoading}>
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button onClick={() => setEditMode(true)} disabled={isLoading}>
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
          <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
            <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
              <Grid item xs={12} sm={4.0}>
                <TextField
                  name="type"
                  id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Issue.attachments/View/default/Attachment/group/type"
                  label={
                    t('edemokracia.admin.Issue.attachments.Attachment.group.type', { defaultValue: 'Type' }) as string
                  }
                  value={data.type || ''}
                  error={!!validation.get('type')}
                  helperText={validation.get('type')}
                  onChange={(event) => storeDiff('type', event.target.value as EdemokraciaAttachmentType)}
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
                  <MenuItem value={'LINK'}>
                    {t('enumerations.EdemokraciaAttachmentType.LINK', { defaultValue: 'LINK' })}
                  </MenuItem>
                  <MenuItem value={'IMAGE'}>
                    {t('enumerations.EdemokraciaAttachmentType.IMAGE', { defaultValue: 'IMAGE' })}
                  </MenuItem>
                  <MenuItem value={'VIDEO'}>
                    {t('enumerations.EdemokraciaAttachmentType.VIDEO', { defaultValue: 'VIDEO' })}
                  </MenuItem>
                  <MenuItem value={'MAP'}>
                    {t('enumerations.EdemokraciaAttachmentType.MAP', { defaultValue: 'MAP' })}
                  </MenuItem>
                </TextField>
              </Grid>

              <Grid item xs={12} sm={4.0}>
                {editMode ? (
                  <TextField
                    name="file"
                    id="BinaryTypeInput@edemokracia/admin/Admin/edemokracia/admin/Issue.attachments/View/default/Attachment/group/file"
                    label={
                      t('edemokracia.admin.Issue.attachments.Attachment.group.file', { defaultValue: 'File' }) as string
                    }
                    type="file"
                    error={!!validation.get('file')}
                    helperText={validation.get('file')}
                    onChange={async (event: any) => {
                      try {
                        const uploadedData = await uploadFile(
                          data,
                          'file',
                          event.target.files,
                          '/admin/IssueAttachment/file',
                        );
                        if (uploadedData) {
                          if (uploadedData.error) {
                            enqueueSnackbar(
                              t('judo.files.upload-error', { defaultValue: uploadedData.error }) as string,
                              {
                                variant: 'error',
                                ...toastConfig.error,
                              },
                            );
                            console.error(uploadedData);
                            return;
                          }
                          storeDiff('file', uploadedData.token);
                          enqueueSnackbar(
                            t('judo.files.upload-success', { defaultValue: 'File uploaded successfully.' }) as string,
                            {
                              variant: 'success',
                              ...toastConfig.success,
                            },
                          );
                        }
                      } catch (err) {
                        enqueueSnackbar(
                          t('judo.files.upload-error', {
                            defaultValue: 'An error occurred during file upload!',
                          }) as string,
                          {
                            variant: 'error',
                            ...toastConfig.error,
                          },
                        );
                        console.error(err);
                      }
                    }}
                    className={false || !editMode ? 'Mui-readOnly' : undefined}
                    InputLabelProps={{ shrink: true }}
                    InputProps={{
                      readOnly: false || !editMode,
                      startAdornment: (
                        <InputAdornment position="start">
                          <MdiIcon path="file-document-outline" mimeType={{ type: 'image', subType: '*' }} />
                        </InputAdornment>
                      ),
                    }}
                  />
                ) : (
                  <Button variant="contained" disabled={!data?.file} onClick={() => downloadFile(data, 'file')}>
                    <MdiIcon path="file-document-outline" mimeType={{ type: 'image', subType: '*' }} />
                    {t('edemokracia.admin.Issue.attachments.Attachment.group.file', { defaultValue: 'File' }) as string}
                  </Button>
                )}
              </Grid>

              <Grid item xs={12} sm={4.0}>
                <TextField
                  name="link"
                  id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Issue.attachments/View/default/Attachment/group/link"
                  label={
                    t('edemokracia.admin.Issue.attachments.Attachment.group.link', { defaultValue: 'Link' }) as string
                  }
                  value={data.link}
                  error={!!validation.get('link')}
                  helperText={validation.get('link')}
                  onChange={(event) => storeDiff('link', event.target.value)}
                  className={false || !editMode ? 'Mui-readOnly' : undefined}
                  InputLabelProps={{ shrink: true }}
                  InputProps={{
                    readOnly: false || !editMode,
                    startAdornment: (
                      <InputAdornment position="start">
                        <MdiIcon path="text_fields" />
                      </InputAdornment>
                    ),
                  }}
                />
              </Grid>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
