///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::createUser#ButtonCallOperation
// Owner Page name: edemokracia::admin::Admin.dashboardhome#View
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
  AdminCreateUserInputQueryCustomizer,
  AdminCreateUserInputStored,
  AdminUserStored,
  AdminCreateUserInput,
  AdminUser,
  AdminDashboardStored,
} from '../../../../../../../generated/data-api';
import { adminCreateUserInputServiceImpl, adminDashboardServiceImpl } from '../../../../../../../generated/data-axios';
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig } from '../../../../../../../config';

export interface AdminDashboardCreateUserFormProps {
  successCallback: (result?: AdminUserStored) => void;
  cancel: () => void;
}

export function AdminDashboardCreateUserForm({ successCallback, cancel }: AdminDashboardCreateUserFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCreateUserInput>({} as unknown as AdminCreateUserInput);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Dashboard.createUser.TransferObject.Form', {
    defaultValue: 'Create user',
  });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCreateUserInputServiceImpl.getTemplate();
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
      const res = await adminDashboardServiceImpl.createUser(data);

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
                <MdiIcon path="security" />
                <Typography variant="h6" component="h1">
                  {t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.security.security.Label', {
                    defaultValue: 'Security',
                  })}
                </Typography>
              </Grid>

              <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                <Grid item xs={12} sm={4.0}>
                  <TextField
                    name="userName"
                    id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Dashboard.createUser/Input/default/TransferObject_Form/security/LabelWrapper/security/userName"
                    label={
                      t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.security.security.userName', {
                        defaultValue: 'UserName',
                      }) as string
                    }
                    value={data.userName}
                    error={!!validation.get('userName')}
                    helperText={validation.get('userName')}
                    onChange={(event) => storeDiff('userName', event.target.value)}
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
                  Switch
                </Grid>
              </Grid>
            </Card>
          </Grid>

          <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
            <Card>
              <Grid container item alignItems="center" justifyContent="flex-start">
                <MdiIcon path="card-account-details" />
                <Typography variant="h6" component="h1">
                  {t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.Label', {
                    defaultValue: 'Personal',
                  })}
                </Typography>
              </Grid>

              <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={4.0}>
                    <TextField
                      name="firstName"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Dashboard.createUser/Input/default/TransferObject_Form/personal/LabelWrapper/personal/name/firstName"
                      label={
                        t(
                          'edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.firstName',
                          { defaultValue: 'FirstName' },
                        ) as string
                      }
                      value={data.firstName}
                      error={!!validation.get('firstName')}
                      helperText={validation.get('firstName')}
                      onChange={(event) => storeDiff('firstName', event.target.value)}
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
                    <TextField
                      name="lastName"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Dashboard.createUser/Input/default/TransferObject_Form/personal/LabelWrapper/personal/name/lastName"
                      label={
                        t(
                          'edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.lastName',
                          { defaultValue: 'LastName' },
                        ) as string
                      }
                      value={data.lastName}
                      error={!!validation.get('lastName')}
                      helperText={validation.get('lastName')}
                      onChange={(event) => storeDiff('lastName', event.target.value)}
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
                    <TextField
                      name="email"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Dashboard.createUser/Input/default/TransferObject_Form/personal/LabelWrapper/personal/name/email"
                      label={
                        t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.email', {
                          defaultValue: 'Email',
                        }) as string
                      }
                      value={data.email}
                      error={!!validation.get('email')}
                      helperText={validation.get('email')}
                      onChange={(event) => storeDiff('email', event.target.value)}
                      className={false || !editMode ? 'Mui-readOnly' : undefined}
                      InputLabelProps={{ shrink: true }}
                      InputProps={{
                        readOnly: false || !editMode,
                        startAdornment: (
                          <InputAdornment position="start">
                            <MdiIcon path="email" />
                          </InputAdornment>
                        ),
                      }}
                    />
                  </Grid>

                  <Grid item xs={12} sm={4.0}>
                    <TextField
                      name="phone"
                      id="TextInput@edemokracia/admin/Admin/edemokracia/admin/Dashboard.createUser/Input/default/TransferObject_Form/personal/LabelWrapper/personal/name/phone"
                      label={
                        t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.phone', {
                          defaultValue: 'Phone',
                        }) as string
                      }
                      value={data.phone}
                      error={!!validation.get('phone')}
                      helperText={validation.get('phone')}
                      onChange={(event) => storeDiff('phone', event.target.value)}
                      className={false || !editMode ? 'Mui-readOnly' : undefined}
                      InputLabelProps={{ shrink: true }}
                      InputProps={{
                        readOnly: false || !editMode,
                        startAdornment: (
                          <InputAdornment position="start">
                            <MdiIcon path="phone" />
                          </InputAdornment>
                        ),
                      }}
                    />
                  </Grid>
                </Grid>
              </Grid>
            </Card>
          </Grid>

          <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
            <Grid item xs={12} sm={4.0}></Grid>

            <Grid item xs={12} sm={4.0}></Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button variant="text" onClick={() => cancel()} disabled={isLoading}>
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <Button variant="contained" onClick={() => submit()} disabled={isLoading}>
          {
            t(
              'edemokracia.admin.Dashboard.createUser.Input.edemokracia.admin.Dashboard.createUser.input.ButtonSaveInput',
              { defaultValue: 'OK' },
            ) as string
          }
        </Button>
      </DialogActions>
    </>
  );
}
