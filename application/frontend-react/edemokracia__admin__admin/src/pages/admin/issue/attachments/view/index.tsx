//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Issue.attachments#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: attachments
// Page DataElement owner name: edemokracia::admin::Issue

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Container,
  Grid,
  Button,
  ButtonGroup,
  Card,
  CardContent,
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
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
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

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminIssueAttachmentStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminIssueAttachmentsView))`,
  );
  const handleDeleteError = useErrorHandler<AdminIssueAttachmentStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminIssueAttachmentsView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueAttachmentStored>({} as unknown as AdminIssueAttachmentStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueAttachmentStored, any>>(
    {} as unknown as Record<keyof AdminIssueAttachmentStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueAttachmentStored, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueAttachmentStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminIssueAttachmentStored, string>>(new Map());

  const title: string = t('edemokracia.admin.Issue.attachments.View', { defaultValue: 'View / Edit Attachment' });

  const isFormUpdateable = useCallback(() => {
    return true && typeof data?.__updateable === 'boolean' && data?.__updateable;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return true && typeof data?.__deleteable === 'boolean' && data?.__deleteable;
  }, [data]);

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminIssueAttachmentStored, any>);
    } catch (error) {
      handleFetchError(error);
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
      handleUpdateError(error, { setValidation }, data);
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
      handleDeleteError(error, undefined, data);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminIssueAttachmentStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {editMode && isFormUpdateable() && (
          <Grid item>
            <Button
              id="page-action-edit-cancel"
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
        {editMode && isFormUpdateable() && (
          <Grid item>
            <Button id="page-action-edit-save" onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
            </Button>
          </Grid>
        )}
        {!editMode && isFormDeleteable() && (
          <Grid item>
            <Button
              id="page-action-delete"
              onClick={() =>
                pageDeleteAttachmentsAction(
                  { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminIssue>,
                  data,
                  () => {
                    back();
                  },
                )
              }
              disabled={isLoading || !data.__deleteable}
            >
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
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
          >
            <Grid item xs={12} sm={12}>
              <Grid
                id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsViewDefaultAttachmentViewGroup"
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
                    id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsViewDefaultAttachmentViewGroupType"
                    label={
                      t('edemokracia.admin.Issue.attachments.Attachment.View.group.type', {
                        defaultValue: 'Type',
                      }) as string
                    }
                    value={data.type || ''}
                    className={!editMode ? 'JUDO-viewMode' : undefined}
                    disabled={false || !isFormUpdateable()}
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
                  {editMode ? (
                    <TextField
                      name="file"
                      id="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsViewDefaultAttachmentViewGroupFile"
                      label={
                        t('edemokracia.admin.Issue.attachments.Attachment.View.group.file', {
                          defaultValue: 'File',
                        }) as string
                      }
                      type="file"
                      error={!!validation.get('file')}
                      helperText={validation.get('file')}
                      className={!editMode ? 'JUDO-viewMode' : undefined}
                      disabled={false || !isFormUpdateable()}
                      onChange={async (event: any) => {
                        try {
                          const uploadedData = await uploadFile(
                            data,
                            'file',
                            event.target.files,
                            'admin/IssueAttachment/file',
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
                    <ButtonGroup>
                      <Button
                        id="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsViewDefaultAttachmentViewGroupFile-download"
                        variant="contained"
                        disabled={!data?.file}
                        onClick={() => downloadFile(data, 'file')}
                      >
                        <MdiIcon path="file-document-outline" mimeType={{ type: 'image', subType: '*' }} />
                        {
                          t('edemokracia.admin.Issue.attachments.Attachment.View.group.file', {
                            defaultValue: 'File',
                          }) as string
                        }
                      </Button>
                      <Button
                        id="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsViewDefaultAttachmentViewGroupFile-toggleEditMode"
                        variant="contained"
                        disabled={false || !isFormUpdateable()}
                        onClick={() => setEditMode(true)}
                      >
                        <MdiIcon path="upload" />
                      </Button>
                    </ButtonGroup>
                  )}
                </Grid>

                <Grid item xs={12} sm={12} md={4.0}>
                  <TextField
                    name="link"
                    id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsViewDefaultAttachmentViewGroupLink"
                    label={
                      t('edemokracia.admin.Issue.attachments.Attachment.View.group.link', {
                        defaultValue: 'Link',
                      }) as string
                    }
                    value={data.link}
                    className={!editMode ? 'JUDO-viewMode' : undefined}
                    disabled={false || !isFormUpdateable()}
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
              </Grid>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
