//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/actions/actionForm.tsx.hbs
//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
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
  TextField,
  Typography,
} from '@mui/material';
import { DateTimePicker } from '@mui/x-date-pickers';
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
  AdminIssueQueryCustomizer,
  DebateQueryCustomizer,
  CreateDebateInputQueryCustomizer,
  AdminIssue,
  CreateDebateInput,
  AdminIssueStored,
  Debate,
  DebateStored,
  CreateDebateInputStored,
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
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../../custom';

export interface AdminIssueCreateDebateFormProps {
  successCallback: (result?: DebateStored) => void;
  cancel: () => void;
  owner: AdminIssueStored;
}

export function AdminIssueCreateDebateForm({ successCallback, cancel, owner }: AdminIssueCreateDebateFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

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
  const [payloadDiff] = useState<Record<keyof CreateDebateInput, any>>(
    {} as unknown as Record<keyof CreateDebateInput, any>,
  );
  const storeDiff: (attributeName: keyof CreateDebateInput, value: any) => void = useCallback(
    (attributeName: keyof CreateDebateInput, value: any) => {
      payloadDiff[attributeName] = value;
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
      const res = await adminIssueServiceImpl.createDebate(owner, data);

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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation-dialog-close"
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
                          renderInput={(props: any) => (
                            <TextField
                              required
                              {...props}
                              id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateInputDefaultCreateDebateInputFormDebateLabelWrapperDebateCloseAt"
                              className={!editMode ? 'JUDO-viewMode' : undefined}
                              error={!!validation.get('closeAt')}
                              helperText={validation.get('closeAt')}
                            />
                          )}
                          label={
                            t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.closeAt', {
                              defaultValue: 'Close at',
                            }) as string
                          }
                          value={serviceDateToUiDate(data.closeAt ?? null)}
                          disabled={false || !isFormUpdateable()}
                          onChange={(newValue: any) => {
                            setEditMode(true);
                            storeDiff('closeAt', newValue);
                          }}
                          InputProps={{
                            startAdornment: (
                              <InputAdornment position="start">
                                <MdiIcon path="schedule" />
                              </InputAdornment>
                            ),
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation-action-form-action-cancel"
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation-action-form-action-submit"
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
