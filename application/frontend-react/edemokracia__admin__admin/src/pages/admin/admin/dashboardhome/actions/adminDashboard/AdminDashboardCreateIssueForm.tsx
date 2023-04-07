///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::createIssue#ButtonCallOperation
// Action: CallOperationAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  DialogContent,
  DialogTitle,
  CardContent,
  IconButton,
  Button,
  DialogContentText,
  TextField,
  DialogActions,
  Typography,
  InputAdornment,
  Card,
} from '@mui/material';
import {
  GridRowId,
  GridRowParams,
  GridRenderCellParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridColDef,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import { useSnackbar } from 'notistack';
import { MdiIcon, ModeledTabs } from '../../../../../../components';
import { columnsActionCalculator } from '../../../../../../components/table';
import { useRangeDialog } from '../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../components/widgets';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminCreateIssueInput,
  AdminCreateIssueInputQueryCustomizer,
  AdminIssue,
  AdminIssueStored,
  AdminDashboardStored,
  AdminCreateIssueInputStored,
  AdminDashboard,
} from '../../../../../../generated/data-api';
import { adminCreateIssueInputServiceImpl, adminDashboardServiceImpl } from '../../../../../../generated/data-axios';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../custom';

export interface AdminDashboardCreateIssueFormProps {
  successCallback: (result?: AdminIssueStored) => void;
  cancel: () => void;
}

export function AdminDashboardCreateIssueForm({ successCallback, cancel }: AdminDashboardCreateIssueFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<AdminCreateIssueInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminDashboardCreateIssueForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminCreateIssueInput>({} as unknown as AdminCreateIssueInput);
  const [validation, setValidation] = useState<Map<keyof AdminCreateIssueInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof AdminCreateIssueInput, any>>(
    {} as unknown as Record<keyof AdminCreateIssueInput, any>,
  );
  const storeDiff: (attributeName: keyof AdminCreateIssueInput, value: any) => void = useCallback(
    (attributeName: keyof AdminCreateIssueInput, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Dashboard.createIssue.Input', { defaultValue: 'Create issue' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCreateIssueInputServiceImpl.getTemplate();
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
      const res = await adminDashboardServiceImpl.createIssue(data);

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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueButtonCallOperation-dialog-close"
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
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapper">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="clipboard" />
                      <Typography
                        id="LabeledemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueLabel"
                        variant="h6"
                        component="h1"
                      >
                        {t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.Label', {
                          defaultValue: 'Create issue',
                        })}
                      </Typography>
                    </Grid>
                  </Grid>

                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssue"
                      container
                      direction="row"
                      alignItems="stretch"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12} md={4.0}>
                        <TextField
                          required
                          name="title"
                          id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueTitle"
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.title', {
                              defaultValue: 'Title',
                            }) as string
                          }
                          value={data.title}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false}
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
                          id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDescription"
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.description', {
                              defaultValue: 'Description',
                            }) as string
                          }
                          value={data.description}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false}
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
              id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormGroup"
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {
            t(
              'edemokracia.admin.Dashboard.createIssue.Input.edemokracia.admin.Dashboard.createIssue.input.ButtonBack',
              { defaultValue: 'Cancel' },
            ) as string
          }
        </Button>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueButtonCallOperation-action-form-action-submit"
          variant="contained"
          onClick={() => submit()}
          disabled={isLoading}
        >
          {
            t(
              'edemokracia.admin.Dashboard.createIssue.Input.edemokracia.admin.Dashboard.createIssue.input.ButtonSaveInput',
              { defaultValue: 'OK' },
            ) as string
          }
        </Button>
      </DialogActions>
    </>
  );
}
