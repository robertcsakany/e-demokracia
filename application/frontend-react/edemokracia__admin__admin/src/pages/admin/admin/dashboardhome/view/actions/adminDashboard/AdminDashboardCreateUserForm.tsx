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
  Checkbox,
  ClickAwayListener,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  FormControlLabel,
  FormGroup,
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
  AdminCreateUserInputQueryCustomizer,
  AdminDashboardQueryCustomizer,
  AdminCreateUserInputStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminCreateUserInput,
  AdminUser,
  AdminDashboardStored,
  AdminDashboard,
} from '../../../../../../../generated/data-api';
import { adminCreateUserInputServiceImpl, adminDashboardServiceImpl } from '../../../../../../../generated/data-axios';
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

export interface AdminDashboardCreateUserFormProps {
  successCallback: (result?: AdminUserStored) => void;
  cancel: () => void;
}

export function AdminDashboardCreateUserForm({ successCallback, cancel }: AdminDashboardCreateUserFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<AdminCreateUserInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminDashboardCreateUserForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCreateUserInput>({} as unknown as AdminCreateUserInput);
  const [validation, setValidation] = useState<Map<keyof AdminCreateUserInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminCreateUserInput, any>>(
    {} as unknown as Record<keyof AdminCreateUserInput, any>,
  );
  const storeDiff: (attributeName: keyof AdminCreateUserInput, value: any) => void = useCallback(
    (attributeName: keyof AdminCreateUserInput, value: any) => {
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
  const title: string = t('edemokracia.admin.Dashboard.createUser.Input', { defaultValue: 'TransferObject Form' });

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCreateUserInputServiceImpl.getTemplate();
      setData(res);
      setPayloadDiff({
        ...res,
      } as Record<keyof AdminCreateUserInput, any>);
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
      const res = await adminDashboardServiceImpl.createUser(payloadDiff);

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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserButtonCallOperation-dialog-close"
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
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormSecurityLabelWrapper">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="security" />
                      <Typography
                        id="LabeledemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormSecurityLabelWrapperSecurityLabel"
                        variant="h6"
                        component="h1"
                      >
                        {t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.security.security.Label', {
                          defaultValue: 'Security',
                        })}
                      </Typography>
                    </Grid>
                  </Grid>

                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormSecurityLabelWrapperSecurity"
                      container
                      direction="row"
                      alignItems="stretch"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <TextField
                          required
                          name="userName"
                          id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormSecurityLabelWrapperSecurityUserName"
                          autoFocus
                          label={
                            t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.security.security.userName', {
                              defaultValue: 'UserName',
                            }) as string
                          }
                          value={data.userName}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false || !isFormUpdateable()}
                          error={!!validation.get('userName')}
                          helperText={validation.get('userName')}
                          onChange={(event) => {
                            setEditMode(true);
                            storeDiff('userName', event.target.value);
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
                        <FormGroup>
                          <FormControlLabel
                            sx={{ marginTop: '6px' }}
                            disabled={false || !isFormUpdateable()}
                            control={
                              <Checkbox
                                value={data.hasAdminAccess}
                                onChange={(event) => {
                                  setEditMode(true);
                                  storeDiff('hasAdminAccess', String(event.target.value).toLowerCase() === 'true');
                                }}
                              />
                            }
                            label={
                              t(
                                'edemokracia.admin.Dashboard.createUser.TransferObject.Form.security.security.hasAdminAccess',
                                { defaultValue: 'IsAdmin' },
                              ) as string
                            }
                          />
                        </FormGroup>
                      </Grid>
                    </Grid>
                  </Grid>
                </Grid>
              </CardContent>
            </Card>
          </Grid>

          <Grid item xs={12} sm={12}>
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapper">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="card-account-details" />
                      <Typography
                        id="LabeledemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonalLabel"
                        variant="h6"
                        component="h1"
                      >
                        {t('edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.Label', {
                          defaultValue: 'Personal',
                        })}
                      </Typography>
                    </Grid>
                  </Grid>

                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonal"
                      container
                      direction="row"
                      alignItems="stretch"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12}>
                        <Grid
                          id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonalName"
                          container
                          direction="row"
                          alignItems="flex-start"
                          justifyContent="flex-start"
                          spacing={2}
                        >
                          <Grid item xs={12} sm={12} md={4.0}>
                            <TextField
                              required
                              name="firstName"
                              id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonalNameFirstName"
                              label={
                                t(
                                  'edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.firstName',
                                  { defaultValue: 'FirstName' },
                                ) as string
                              }
                              value={data.firstName}
                              className={!editMode ? 'JUDO-viewMode' : undefined}
                              disabled={false || !isFormUpdateable()}
                              error={!!validation.get('firstName')}
                              helperText={validation.get('firstName')}
                              onChange={(event) => {
                                setEditMode(true);
                                storeDiff('firstName', event.target.value);
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
                            <TextField
                              required
                              name="lastName"
                              id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonalNameLastName"
                              label={
                                t(
                                  'edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.lastName',
                                  { defaultValue: 'LastName' },
                                ) as string
                              }
                              value={data.lastName}
                              className={!editMode ? 'JUDO-viewMode' : undefined}
                              disabled={false || !isFormUpdateable()}
                              error={!!validation.get('lastName')}
                              helperText={validation.get('lastName')}
                              onChange={(event) => {
                                setEditMode(true);
                                storeDiff('lastName', event.target.value);
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
                            <TextField
                              required
                              name="email"
                              id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonalNameEmail"
                              label={
                                t(
                                  'edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.email',
                                  { defaultValue: 'Email' },
                                ) as string
                              }
                              value={data.email}
                              className={!editMode ? 'JUDO-viewMode' : undefined}
                              disabled={false || !isFormUpdateable()}
                              error={!!validation.get('email')}
                              helperText={validation.get('email')}
                              onChange={(event) => {
                                setEditMode(true);
                                storeDiff('email', event.target.value);
                              }}
                              InputLabelProps={{ shrink: true }}
                              InputProps={{
                                startAdornment: (
                                  <InputAdornment position="start">
                                    <MdiIcon path="email" />
                                  </InputAdornment>
                                ),
                              }}
                            />
                          </Grid>

                          <Grid item xs={12} sm={12} md={4.0}>
                            <TextField
                              name="phone"
                              id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormPersonalLabelWrapperPersonalNamePhone"
                              label={
                                t(
                                  'edemokracia.admin.Dashboard.createUser.TransferObject.Form.personal.personal.name.phone',
                                  { defaultValue: 'Phone' },
                                ) as string
                              }
                              value={data.phone}
                              className={!editMode ? 'JUDO-viewMode' : undefined}
                              disabled={false || !isFormUpdateable()}
                              error={!!validation.get('phone')}
                              helperText={validation.get('phone')}
                              onChange={(event) => {
                                setEditMode(true);
                                storeDiff('phone', event.target.value);
                              }}
                              InputLabelProps={{ shrink: true }}
                              InputProps={{
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
                    </Grid>
                  </Grid>
                </Grid>
              </CardContent>
            </Card>
          </Grid>

          <Grid item xs={12} sm={12}>
            <Grid
              id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserInputDefaultTransferObjectFormButtons"
              container
              direction="row"
              alignItems="flex-start"
              justifyContent="flex-start"
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          <MdiIcon path="close-thick" />
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <LoadingButton
          loading={isLoading}
          loadingPosition="start"
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateUserButtonCallOperation-action-form-action-submit"
          variant="contained"
          onClick={() => submit()}
          startIcon={<MdiIcon path="check" />}
        >
          <span>
            {
              t(
                'edemokracia.admin.Dashboard.createUser.Input.edemokracia.admin.Dashboard.createUser.input.ButtonSaveInput',
                { defaultValue: 'OK' },
              ) as string
            }
          </span>
        </LoadingButton>
      </DialogActions>
    </>
  );
}
