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
  Typography,
} from '@mui/material';
import { DateTimePicker, DateTimeValidationError } from '@mui/x-date-pickers';
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
  AdminDashboardQueryCustomizer,
  DebateQueryCustomizer,
  CreateDebateInputQueryCustomizer,
  AdminIssue,
  CreateDebateInput,
  AdminIssueStored,
  Debate,
  DebateStored,
  CreateDebateInputStored,
  AdminDashboardStored,
  AdminDashboard,
} from '../../../../../../../generated/data-api';
import { createDebateInputServiceImpl, adminIssueServiceImpl } from '../../../../../../../generated/data-axios';
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

export interface AdminIssueCreateDebateFormProps {
  successCallback: (result?: DebateStored) => void;
  cancel: () => void;
  owner: AdminIssueStored;
}

export function AdminIssueCreateDebateForm({ successCallback, cancel, owner }: AdminIssueCreateDebateFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<CreateDebateInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminIssueCreateDebateForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<CreateDebateInput>({} as unknown as CreateDebateInput);
  const [validation, setValidation] = useState<Map<keyof CreateDebateInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof CreateDebateInput, any>>(
    {} as unknown as Record<keyof CreateDebateInput, any>,
  );
  const storeDiff: (attributeName: keyof CreateDebateInput, value: any) => void = useCallback(
    (attributeName: keyof CreateDebateInput, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = ['closeAt'];
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
  const title: string = t('edemokracia.admin.Issue.createDebate.Input', { defaultValue: 'Create debate' });

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await createDebateInputServiceImpl.getTemplate();
      setData(res);
      setPayloadDiff({
        ...res,
      } as Record<keyof CreateDebateInput, any>);
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
      const res = await adminIssueServiceImpl.createDebate(owner, payloadDiff);

      if (res) {
        successCallback(res);
      }
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation-dialog-close"
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
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapper">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="wechat" />
                      <Typography
                        id="LabeledemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapperDebateLabel"
                        variant="h6"
                        component="h1"
                      >
                        {t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.Label', {
                          defaultValue: 'Create debate',
                        })}
                      </Typography>
                    </Grid>
                  </Grid>

                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapperDebate"
                      container
                      direction="row"
                      alignItems="stretch"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={8.0}>
                        <TextField
                          required
                          name="title"
                          id="TextInputedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapperDebateTitle"
                          autoFocus
                          label={
                            t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.title', {
                              defaultValue: 'Title',
                            }) as string
                          }
                          value={data.title}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false || !isFormUpdateable()}
                          error={!!validation.get('title')}
                          helperText={validation.get('title')}
                          onChange={(event) => {
                            setEditMode(true);
                            storeDiff('title', event.target.value);
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
                        <DateTimePicker
                          ampm={false}
                          ampmInClock={false}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          slotProps={{
                            textField: {
                              id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapperDebateCloseAt',
                              helperText: validation.get('closeAt'),
                              error: !!validation.get('closeAt'),
                              InputProps: {
                                startAdornment: (
                                  <InputAdornment position="start">
                                    <MdiIcon path="schedule" />
                                  </InputAdornment>
                                ),
                              },
                            },
                          }}
                          onError={(newError: DateTimeValidationError, value: any) => {
                            // https://mui.com/x/react-date-pickers/validation/#show-the-error
                            setValidation((prevValidation) => {
                              const copy = new Map<keyof CreateDebateInput, string>(prevValidation);
                              copy.set(
                                'closeAt',
                                newError === 'invalidDate'
                                  ? (t('judo.error.validation-failed.PATTERN_VALIDATION_FAILED', {
                                      defaultValue: 'Value does not match the pattern requirements.',
                                    }) as string)
                                  : '',
                              );
                              return copy;
                            });
                          }}
                          views={['year', 'month', 'day', 'hours', 'minutes', 'seconds']}
                          label={
                            t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.closeAt', {
                              defaultValue: 'Close at',
                            }) as string
                          }
                          value={serviceDateToUiDate(data.closeAt ?? null)}
                          disabled={false || !isFormUpdateable()}
                          onChange={(newValue: Date) => {
                            setEditMode(true);
                            storeDiff('closeAt', newValue);
                          }}
                        />
                      </Grid>

                      <Grid item xs={12} sm={12}>
                        <TextField
                          required
                          name="description"
                          id="TextAreaedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapperDebateDescription"
                          label={
                            t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.description', {
                              defaultValue: 'Description',
                            }) as string
                          }
                          value={data.description}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false || !isFormUpdateable()}
                          multiline
                          minRows={4.0}
                          error={!!validation.get('description')}
                          helperText={validation.get('description')}
                          onChange={(event) => {
                            setEditMode(true);
                            storeDiff('description', event.target.value);
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
              </CardContent>
            </Card>
          </Grid>

          <Grid item xs={12} sm={12}>
            <Grid
              id="FlexedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormButtons"
              container
              direction="row"
              alignItems="flex-start"
              justifyContent="center"
              spacing={2}
            >
              <Grid item xs={12} sm={12} md={4.0}></Grid>

              <Grid item xs={12} sm={12} md={4.0}></Grid>
            </Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {
            t('edemokracia.admin.Issue.createDebate.Input.edemokracia.admin.Issue.createDebate.input.ButtonBack', {
              defaultValue: 'Cancel',
            }) as string
          }
        </Button>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation-action-form-action-submit"
          variant="contained"
          onClick={() => submit()}
          disabled={isLoading}
        >
          {
            t('edemokracia.admin.Issue.createDebate.Input.edemokracia.admin.Issue.createDebate.input.ButtonSaveInput', {
              defaultValue: 'OK',
            }) as string
          }
        </Button>
      </DialogActions>
    </>
  );
}
