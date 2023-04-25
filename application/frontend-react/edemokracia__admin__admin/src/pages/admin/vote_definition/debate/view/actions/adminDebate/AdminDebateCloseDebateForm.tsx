//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/pages/actions/actionForm.tsx.hbs
//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/pages/actions/actionForm.tsx.hbs
// Action: CallOperationAction

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
  CloseDebateInputQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminDebate,
  VoteDefinitionQueryCustomizer,
  AdminVoteDefinition,
  AdminDebateStored,
  CloseDebateInputStored,
  VoteDefinition,
  CloseDebateInput,
  VoteDefinitionStored,
  EdemokraciaVoteTypeOnCloseDebate,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { closeDebateInputServiceImpl, adminDebateServiceImpl } from '../../../../../../../generated/data-axios';
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
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';
import { useL10N } from '../../../../../../../l10n/l10n-context';

export interface AdminDebateCloseDebateFormProps {
  successCallback: (result?: VoteDefinitionStored) => void;
  cancel: () => void;
  owner: AdminDebateStored;
}

export function AdminDebateCloseDebateForm({ successCallback, cancel, owner }: AdminDebateCloseDebateFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<CloseDebateInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminDebateCloseDebateForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<CloseDebateInput>({} as unknown as CloseDebateInput);
  const [validation, setValidation] = useState<Map<keyof CloseDebateInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof CloseDebateInput, any>>(
    {} as unknown as Record<keyof CloseDebateInput, any>,
  );
  const storeDiff: (attributeName: keyof CloseDebateInput, value: any) => void = useCallback(
    (attributeName: keyof CloseDebateInput, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = ['closeAt'];
      if (dateTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = uiDateToServiceDate(value);
      } else if (dateTimeTypes.includes(attributeName as string)) {
        payloadDiff[attributeName] = value;
      } else {
        payloadDiff[attributeName] = value;
      }
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Debate.closeDebate.Input', { defaultValue: 'TransferObject Form' });

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await closeDebateInputServiceImpl.getTemplate();
      setData(res);
      setPayloadDiff({
        ...res,
      } as Record<keyof CloseDebateInput, any>);
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
      const res = await adminDebateServiceImpl.closeDebate(owner, payloadDiff);

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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateButtonCallOperation-dialog-close"
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
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapper">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="wechat" />
                      <Typography
                        id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapperDebateLabel"
                        variant="h6"
                        component="h1"
                      >
                        {t('edemokracia.admin.Debate.closeDebate.TransferObject.Form.debate.debate.Label', {
                          defaultValue: 'Close debate',
                        })}
                      </Typography>
                    </Grid>
                  </Grid>

                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapperDebate"
                      container
                      direction="row"
                      alignItems="stretch"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <TextField
                          required
                          name="voteType"
                          id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapperDebateVoteType"
                          autoFocus
                          label={
                            t('edemokracia.admin.Debate.closeDebate.TransferObject.Form.debate.debate.voteType', {
                              defaultValue: 'VoteType',
                            }) as string
                          }
                          value={data.voteType || ''}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false || !isFormUpdateable()}
                          error={!!validation.get('voteType')}
                          helperText={validation.get('voteType')}
                          onChange={(event) => {
                            setEditMode(true);
                            storeDiff('voteType', event.target.value as EdemokraciaVoteTypeOnCloseDebate);
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
                          <MenuItem
                            id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeOnCloseDebateYESNO"
                            value={'YES_NO'}
                          >
                            {t('enumerations.EdemokraciaVoteTypeOnCloseDebate.YES_NO', { defaultValue: 'YES_NO' })}
                          </MenuItem>
                          <MenuItem
                            id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeOnCloseDebateYESNOABSTAIN"
                            value={'YES_NO_ABSTAIN'}
                          >
                            {t('enumerations.EdemokraciaVoteTypeOnCloseDebate.YES_NO_ABSTAIN', {
                              defaultValue: 'YES_NO_ABSTAIN',
                            })}
                          </MenuItem>
                          <MenuItem
                            id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeOnCloseDebateSELECTANSWER"
                            value={'SELECT_ANSWER'}
                          >
                            {t('enumerations.EdemokraciaVoteTypeOnCloseDebate.SELECT_ANSWER', {
                              defaultValue: 'SELECT_ANSWER',
                            })}
                          </MenuItem>
                          <MenuItem
                            id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeOnCloseDebateRATE"
                            value={'RATE'}
                          >
                            {t('enumerations.EdemokraciaVoteTypeOnCloseDebate.RATE', { defaultValue: 'RATE' })}
                          </MenuItem>
                          <MenuItem
                            id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeOnCloseDebateNOVOTE"
                            value={'NO_VOTE'}
                          >
                            {t('enumerations.EdemokraciaVoteTypeOnCloseDebate.NO_VOTE', { defaultValue: 'NO_VOTE' })}
                          </MenuItem>
                        </TextField>
                      </Grid>

                      <Grid item xs={12} sm={12} md={4.0}>
                        <DateTimePicker
                          ampm={false}
                          ampmInClock={false}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          slotProps={{
                            textField: {
                              id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapperDebateCloseAt',
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
                              const copy = new Map<keyof CloseDebateInput, string>(prevValidation);
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
                            t('edemokracia.admin.Debate.closeDebate.TransferObject.Form.debate.debate.closeAt', {
                              defaultValue: 'Vote close at',
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
                          name="title"
                          id="TextInputedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapperDebateTitle"
                          label={
                            t('edemokracia.admin.Debate.closeDebate.TransferObject.Form.debate.debate.title', {
                              defaultValue: 'Vote title',
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

                      <Grid item xs={12} sm={12}>
                        <TextField
                          required
                          name="description"
                          id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormDebateLabelWrapperDebateDescription"
                          label={
                            t('edemokracia.admin.Debate.closeDebate.TransferObject.Form.debate.debate.description', {
                              defaultValue: 'Vote description',
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
              id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormButtonsLabelWrapper"
              container
              direction="column"
              alignItems="flex-start"
              justifyContent="flex-start"
              spacing={2}
            >
              <Grid item xs={12} sm={12}>
                <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                  <Typography
                    id="LabeledemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormButtonsLabelWrapperButtonsLabel"
                    variant="h6"
                    component="h1"
                  >
                    {t('edemokracia.admin.Debate.closeDebate.TransferObject.Form.buttons.buttons.Label', {
                      defaultValue: 'Buttons',
                    })}
                  </Typography>
                </Grid>
              </Grid>

              <Grid item xs={12} sm={12}>
                <Grid
                  id="FlexedemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateInputDefaultTransferObjectFormButtonsLabelWrapperButtons"
                  container
                  direction="row"
                  alignItems="stretch"
                  justifyContent="flex-start"
                  spacing={2}
                >
                  <Grid item xs={12} sm={12} md={4.0}></Grid>

                  <Grid item xs={12} sm={12} md={4.0}></Grid>
                </Grid>
              </Grid>
            </Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {
            t('edemokracia.admin.Debate.closeDebate.Input.edemokracia.admin.Debate.closeDebate.input.ButtonBack', {
              defaultValue: 'Cancel',
            }) as string
          }
        </Button>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewEdemokraciaAdminAdminEdemokraciaAdminDebateCloseDebateButtonCallOperation-action-form-action-submit"
          variant="contained"
          onClick={() => submit()}
          disabled={isLoading}
        >
          {
            t('edemokracia.admin.Debate.closeDebate.Input.edemokracia.admin.Debate.closeDebate.input.ButtonSaveInput', {
              defaultValue: 'actionButton',
            }) as string
          }
        </Button>
      </DialogActions>
    </>
  );
}
