///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::attachments#TableCreate
// Action: CreateAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  Button,
  Card,
  CardContent,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  IconButton,
  InputAdornment,
  MenuItem,
  TextField,
} from '@mui/material';
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
import { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from 'notistack';
import { v1 as uuidv1 } from 'uuid';
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
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  serviceDateToUiDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';

export interface TableCreateAttachmentsFormProps {
  successCallback: (result: AdminIssueAttachmentStored) => void;
  cancel: () => void;
  owner: JudoIdentifiable<AdminIssue>;
}

export function TableCreateAttachmentsForm({ successCallback, cancel, owner }: TableCreateAttachmentsFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleCreateError = useErrorHandler<AdminIssueAttachment>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Create)(component=TableCreateAttachmentsForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueAttachment>({
    __referenceId: uuidv1(),
  } as unknown as AdminIssueAttachment);
  const [validation, setValidation] = useState<Map<keyof AdminIssueAttachment, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof AdminIssueAttachment, any>>(
    {} as unknown as Record<keyof AdminIssueAttachment, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueAttachment, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueAttachment, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Issue.attachments.Create', { defaultValue: 'Create Attachment' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueAttachmentServiceImpl.getTemplate();
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
      const res = await adminIssueServiceForAttachmentsImpl.createAttachments(owner, data);

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
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminDashboardIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate-dialog-close"
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
              id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroup"
              container
              direction="row"
              alignItems="flex-start"
              justifyContent="flex-start"
              spacing={2}
            >
              <Grid item xs={12} sm={12} md={4.0}>
                <TextField
                  required
                  name="type"
                  id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroupType"
                  label={
                    t('edemokracia.admin.Issue.attachments.Attachment.Form.group.type', {
                      defaultValue: 'Type',
                    }) as string
                  }
                  value={data.type || ''}
                  className={!editMode ? 'JUDO-viewMode' : undefined}
                  disabled={false}
                  error={!!validation.get('type')}
                  helperText={validation.get('type')}
                  onChange={(event) => {
                    setEditMode(true);
                    storeDiff('type', event.target.value as EdemokraciaAttachmentType);
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
                  <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaAttachmentTypeLINK" value={'LINK'}>
                    {t('enumerations.EdemokraciaAttachmentType.LINK', { defaultValue: 'LINK' })}
                  </MenuItem>
                  <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaAttachmentTypeIMAGE" value={'IMAGE'}>
                    {t('enumerations.EdemokraciaAttachmentType.IMAGE', { defaultValue: 'IMAGE' })}
                  </MenuItem>
                  <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaAttachmentTypeVIDEO" value={'VIDEO'}>
                    {t('enumerations.EdemokraciaAttachmentType.VIDEO', { defaultValue: 'VIDEO' })}
                  </MenuItem>
                  <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaAttachmentTypeMAP" value={'MAP'}>
                    {t('enumerations.EdemokraciaAttachmentType.MAP', { defaultValue: 'MAP' })}
                  </MenuItem>
                </TextField>
              </Grid>

              <Grid item xs={12} sm={12} md={4.0}>
                <TextField
                  name="link"
                  id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroupLink"
                  label={
                    t('edemokracia.admin.Issue.attachments.Attachment.Form.group.link', {
                      defaultValue: 'Link',
                    }) as string
                  }
                  value={data.link}
                  className={!editMode ? 'JUDO-viewMode' : undefined}
                  disabled={false}
                  error={!!validation.get('link')}
                  helperText={validation.get('link')}
                  onChange={(event) => {
                    setEditMode(true);
                    storeDiff('link', event.target.value);
                  }}
                  InputLabelProps={{ shrink: true }}
                  InputProps={{
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
                    id="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroupFile"
                    label={
                      t('edemokracia.admin.Issue.attachments.Attachment.Form.group.file', {
                        defaultValue: 'File',
                      }) as string
                    }
                    type="file"
                    error={!!validation.get('file')}
                    helperText={validation.get('file')}
                    className={!editMode ? 'JUDO-viewMode' : undefined}
                    disabled={false}
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
                          setEditMode(true);
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
                    InputLabelProps={{ shrink: true }}
                    InputProps={{
                      startAdornment: (
                        <InputAdornment position="start">
                          <MdiIcon path="file-document-outline" mimeType={{ type: 'image', subType: '*' }} />
                        </InputAdornment>
                      ),
                    }}
                  />
                ) : (
                  <Button
                    id="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroupFile-download"
                    variant="contained"
                    disabled={!data?.file}
                    onClick={() => downloadFile(data, 'file')}
                  >
                    <MdiIcon path="file-document-outline" mimeType={{ type: 'image', subType: '*' }} />
                    {
                      t('edemokracia.admin.Issue.attachments.Attachment.Form.group.file', {
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
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminDashboardIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminDashboardIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate-action-form-action-create"
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
