///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::attachments#TableCreate
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
  CardContent,
  Divider,
  RadioGroup,
  FormControlLabel,
  Radio,
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSortItem,
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
  EdemokraciaAttachmentType,
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueStored,
  AdminIssueAttachmentStored,
  AdminIssueAttachmentQueryCustomizer,
} from '../../../../../../../generated/data-api';
import {
  adminIssueServiceForAttachmentsImpl,
  adminIssueAttachmentServiceImpl,
} from '../../../../../../../generated/data-axios';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../../config';

export interface TableCreateAttachmentsFormProps {
  successCallback: (result: AdminIssueAttachmentStored) => void;
  cancel: () => void;
  owner: AdminIssueStored;
}

export function TableCreateAttachmentsForm({ successCallback, cancel, owner }: TableCreateAttachmentsFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueAttachment>({} as unknown as AdminIssueAttachment);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Issue.attachments.Create', { defaultValue: 'Create Attachment' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueAttachmentServiceImpl.getTemplate();
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
      const res = await adminIssueServiceForAttachmentsImpl.createAttachments(owner, data);

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
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch" justifyContent="flex-start">
          <Grid item xs={12} sm={12}>
            <Grid container direction="row" alignItems="flex-start" justifyContent="flex-start" spacing={2}>
              <Grid item xs={12} sm={12} md={4.0}>
                <TextField
                  required
                  name="type"
                  id="EnumerationCombo@edemokracia/admin/Admin/edemokracia/admin/Issue.attachments/Create/default/Create_Attachment/group/type"
                  label={
                    t('edemokracia.admin.Issue.attachments.Create.Attachment.group.type', {
                      defaultValue: 'Type',
                    }) as string
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

              <Grid item xs={12} sm={12} md={4.0}>
                <TextField
                  name="link"
                  id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Issue.attachments/Create/default/Create_Attachment/group/link"
                  label={
                    t('edemokracia.admin.Issue.attachments.Create.Attachment.group.link', {
                      defaultValue: 'Link',
                    }) as string
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

              <Grid item xs={12} sm={12} md={4.0}>
                {editMode ? (
                  <TextField
                    name="file"
                    id="BinaryTypeInput@edemokracia/admin/Admin/edemokracia/admin/Issue.attachments/Create/default/Create_Attachment/group/file"
                    label={
                      t('edemokracia.admin.Issue.attachments.Create.Attachment.group.file', {
                        defaultValue: 'File',
                      }) as string
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
                    {
                      t('edemokracia.admin.Issue.attachments.Create.Attachment.group.file', {
                        defaultValue: 'File',
                      }) as string
                    }
                  </Button>
                )}
              </Grid>
            </Grid>
          </Grid>
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
