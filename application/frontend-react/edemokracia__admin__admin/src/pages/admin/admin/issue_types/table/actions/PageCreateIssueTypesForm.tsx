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
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminIssueTypeStored,
} from '../../../../../../generated/data-api';
import { adminAdminServiceForIssueTypesImpl, adminIssueTypeServiceImpl } from '../../../../../../generated/data-axios';
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
} from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig, dividerHeight } from '../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../custom';

export interface PageCreateIssueTypesFormProps {
  successCallback: (result: AdminIssueTypeStored) => void;
  cancel: () => void;
}

export function PageCreateIssueTypesForm({ successCallback, cancel }: PageCreateIssueTypesFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleCreateError = useErrorHandler<AdminIssueType>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Create)(component=PageCreateIssueTypesForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueType>({
    __referenceId: uuidv1(),
  } as unknown as AdminIssueType);
  const [validation, setValidation] = useState<Map<keyof AdminIssueType, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof AdminIssueType, any>>({} as unknown as Record<keyof AdminIssueType, any>);
  const storeDiff: (attributeName: keyof AdminIssueType, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueType, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Admin.issueTypes.Create', { defaultValue: 'Create Issue Type' });

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueTypeServiceImpl.getTemplate();
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
      const res = await adminAdminServiceForIssueTypesImpl.createIssueTypes(data);

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
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesPageCreate-dialog-close"
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
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesCreateDefaultIssueTypeFormGroup">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <TextField
                      required
                      name="title"
                      id="TextInputedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesCreateDefaultIssueTypeFormGroupTitle"
                      autoFocus
                      label={
                        t('edemokracia.admin.Admin.issueTypes.IssueType.Form.group.title', {
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

                  <Grid item xs={12} sm={12}>
                    <TextField
                      required
                      name="description"
                      id="TextInputedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesCreateDefaultIssueTypeFormGroupDescription"
                      label={
                        t('edemokracia.admin.Admin.issueTypes.IssueType.Form.group.description', {
                          defaultValue: 'Description',
                        }) as string
                      }
                      value={data.description}
                      className={!editMode ? 'JUDO-viewMode' : undefined}
                      disabled={false || !isFormUpdateable()}
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
              </CardContent>
            </Card>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesPageCreate-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
        </Button>
        <Button
          id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableEdemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesPageCreate-action-form-action-create"
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
