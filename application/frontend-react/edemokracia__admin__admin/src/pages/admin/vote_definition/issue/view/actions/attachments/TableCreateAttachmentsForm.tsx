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
// Action: CreateAction

import { useState, useEffect, useRef, useCallback, Dispatch, SetStateAction, FC } from 'react';
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
import { LoadingButton } from '@mui/lab';
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
import { v1 as uuidv1 } from 'uuid';
import { useJudoNavigation, MdiIcon, ModeledTabs } from '../../../../../../../components';
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
  uiTimeToServiceTime,
  serviceTimeToUiTime,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';
import { useL10N } from '../../../../../../../l10n/l10n-context';

export interface TableCreateAttachmentsFormProps {
  successCallback: () => void;
  cancel: () => void;
  owner: JudoIdentifiable<AdminIssue>;
}

export function TableCreateAttachmentsForm({ successCallback, cancel, owner }: TableCreateAttachmentsFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const anchorRef = useRef<HTMLDivElement>(null);
  const { navigate } = useJudoNavigation();
  const [open, setOpen] = useState(false);

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
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueAttachment, any>>(
    {} as unknown as Record<keyof AdminIssueAttachment, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueAttachment, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueAttachment, value: any) => {
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
  const title: string = t('edemokracia.admin.Issue.attachments.Create', { defaultValue: 'Create Attachment' });

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueAttachmentServiceImpl.getTemplate();
      setData((prevData) => ({ ...prevData, ...res }));
      setPayloadDiff({
        ...res,
      } as Record<keyof AdminIssueAttachment, any>);
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
      const res = await adminIssueServiceForAttachmentsImpl.createAttachments(owner, payloadDiff);

      return res;
    } catch (error) {
      handleCreateError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  const handleToggle = () => {
    setOpen((prevOpen) => !prevOpen);
  };

  const handleClose = (event: Event) => {
    if (anchorRef.current && anchorRef.current.contains(event.target as HTMLElement)) {
      return;
    }

    setOpen(false);
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate-dialog-close"
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
                  autoFocus
                  label={
                    t('edemokracia.admin.Issue.attachments.Attachment.Form.group.type', {
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

              <Grid item xs={12} sm={12} md={4.0}>
                <BinaryInput
                  downloadId="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroupFile-download"
                  label={
                    t('edemokracia.admin.Issue.attachments.Attachment.Form.group.file', {
                      defaultValue: 'File',
                    }) as string
                  }
                  icon="file-document-outline"
                  mimeType={{
                    type: 'image',
                    subType: '*',
                  }}
                  editMode={editMode}
                  validation={validation}
                  data={data}
                  attributeName="file"
                  attributePath="admin/IssueAttachment/file"
                  disabled={false || !isFormUpdateable()}
                  readonly={false}
                  uploadId="BinaryTypeInputedemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsCreateDefaultAttachmentFormGroupFile-upload"
                  uploadCallback={async (uploadedData: { token: string }) => {
                    setEditMode(true);
                    storeDiff('file', uploadedData.token);
                  }}
                />
              </Grid>
            </Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <ButtonGroup size="small" ref={anchorRef} aria-label="split button" disabled={isLoading}>
          <LoadingButton
            loading={isLoading}
            loadingPosition="start"
            id="CreateActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionIssueViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate-action-form-action-create"
            variant="contained"
            onClick={async () => {
              const result = await saveData();
              if (result) {
                successCallback();
              }
            }}
          >
            <span>{t('judo.pages.create', { defaultValue: 'Create' })}</span>
          </LoadingButton>
          <Button variant="contained" size="small" onClick={handleToggle}>
            <MdiIcon path="menu-down" />
          </Button>
        </ButtonGroup>
        <Popper sx={{ zIndex: 1 }} open={open} anchorEl={anchorRef.current} transition disablePortal>
          {({ TransitionProps, placement }) => (
            <Grow
              {...TransitionProps}
              style={{ transformOrigin: placement === 'bottom' ? 'center top' : 'center bottom' }}
            >
              <Paper>
                <ClickAwayListener onClickAway={handleClose}>
                  <MenuList id="split-button-menu" autoFocusItem>
                    <MenuItem
                      key="create-and-navigate"
                      onClick={async (event: any) => {
                        const result: { __signedIdentifier: string } | undefined = await saveData();

                        if (result) {
                          successCallback();
                          navigate(`admin/issue/attachments/view/${result.__signedIdentifier}`);
                        }
                      }}
                      disabled={isLoading}
                    >
                      {t('judo.pages.create-and-navigate', { defaultValue: 'Create and navigate' })}
                    </MenuItem>
                  </MenuList>
                </ClickAwayListener>
              </Paper>
            </Grow>
          )}
        </Popper>
      </DialogActions>
    </>
  );
}
