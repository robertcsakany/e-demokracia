///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::createDebate#ButtonCallOperation
// Owner Page name: edemokracia::admin::Admin.issues#Table
// Action: CallOperationAction

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
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSelectionModel,
  GridToolbarContainer,
  GridRenderCellParams,
  GridRowParams,
  GridColDef,
} from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
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
  CreateDebateInputQueryCustomizer,
  CreateDebateInput,
  AdminIssueStored,
  Debate,
  DebateStored,
  CreateDebateInputStored,
} from '../../../../../../../generated/data-api';
import { createDebateInputServiceImpl, adminIssueServiceImpl } from '../../../../../../../generated/data-axios';
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig } from '../../../../../../../config';

export interface AdminIssueCreateDebateFormProps {
  successCallback: (result?: DebateStored) => void;
  cancel: () => void;
  owner: AdminIssueStored;
}

export function AdminIssueCreateDebateForm({ successCallback, cancel, owner }: AdminIssueCreateDebateFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<CreateDebateInput>({} as unknown as CreateDebateInput);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form', {
    defaultValue: 'Create debate',
  });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await createDebateInputServiceImpl.getTemplate();
      setData(res);
    } catch (e) {
      console.error(e);
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
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
          <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
            <Card>
              <Grid container item alignItems="center" justifyContent="flex-start">
                <MdiIcon path="wechat" />
                <Typography variant="h6" component="h1">
                  {t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.Label', {
                    defaultValue: 'Create debate',
                  })}
                </Typography>
              </Grid>

              <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                <Grid item xs={12} sm={8.0}>
                  <TextField
                    name="title"
                    id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Issue.createDebate/Input/default/CreateDebateInput_Form/debate/LabelWrapper/debate/title"
                    label={
                      t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.title', {
                        defaultValue: 'Title',
                      }) as string
                    }
                    value={data.title}
                    error={!!validation.get('title')}
                    helperText={validation.get('title')}
                    onChange={(event) => storeDiff('title', event.target.value)}
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

                <Grid item xs={12} sm={4.0}>
                  <DateTimePicker
                    renderInput={(props: any) => (
                      <TextField
                        {...props}
                        error={!!validation.get('closeAt')}
                        helperText={validation.get('closeAt')}
                      />
                    )}
                    label={
                      t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.closeAt', {
                        defaultValue: 'Close at',
                      }) as string
                    }
                    value={data.closeAt ?? null}
                    className={false || !editMode ? 'Mui-readOnly' : undefined}
                    readOnly={false || !editMode}
                    onChange={(newValue: any) => storeDiff('closeAt', newValue)}
                    InputProps={{
                      startAdornment: (
                        <InputAdornment position="start">
                          <MdiIcon path="schedule" />
                        </InputAdornment>
                      ),
                    }}
                  />
                </Grid>

                <Grid item xs={12}>
                  <TextField
                    name="description"
                    id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Issue.createDebate/Input/default/CreateDebateInput_Form/debate/LabelWrapper/debate/description"
                    label={
                      t('edemokracia.admin.Issue.createDebate.CreateDebateInput.Form.debate.debate.description', {
                        defaultValue: 'Description',
                      }) as string
                    }
                    value={data.description}
                    multiline
                    minRows={4.0}
                    error={!!validation.get('description')}
                    helperText={validation.get('description')}
                    onChange={(event) => storeDiff('description', event.target.value)}
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
            </Card>
          </Grid>

          <Grid container item xs={12} alignItems="flex-start" justifyContent="center" spacing={2}>
            <Grid item xs={12} sm={4.0}></Grid>

            <Grid item xs={12} sm={4.0}></Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button variant="text" onClick={() => cancel()} disabled={isLoading}>
          {
            t('edemokracia.admin.Issue.createDebate.Input.edemokracia.admin.Issue.createDebate.input.ButtonBack', {
              defaultValue: 'Cancel',
            }) as string
          }
        </Button>
        <Button variant="contained" onClick={() => submit()} disabled={isLoading}>
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
