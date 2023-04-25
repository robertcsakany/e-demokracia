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
  AdminIssueTypeMaskBuilder,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminCreateIssueInputStored,
  AdminDistrictQueryCustomizer,
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminCreateIssueInput,
  AdminCityStored,
  AdminCountyStored,
  AdminDashboardStored,
  AdminIssueTypeStored,
  AdminDashboard,
  AdminCreateIssueInputQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminCountyMaskBuilder,
  AdminIssue,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminDistrictMaskBuilder,
} from '../../../../../../../generated/data-api';
import { adminCreateIssueInputServiceImpl, adminDashboardServiceImpl } from '../../../../../../../generated/data-axios';
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

export interface AdminDashboardCreateIssueFormProps {
  successCallback: (result?: AdminIssueStored) => void;
  cancel: () => void;
}

export function AdminDashboardCreateIssueForm({ successCallback, cancel }: AdminDashboardCreateIssueFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

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
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminCreateIssueInput, any>>(
    {} as unknown as Record<keyof AdminCreateIssueInput, any>,
  );
  const storeDiff: (attributeName: keyof AdminCreateIssueInput, value: any) => void = useCallback(
    (attributeName: keyof AdminCreateIssueInput, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = ['debateCloseAt'];
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
  const title: string = t('edemokracia.admin.Dashboard.createIssue.Input', { defaultValue: 'Create issue' });

  const [citySortModel, setCitySortModel] = useState<GridSortModel>([{ field: 'representation', sort: 'asc' }]);

  const cityColumns: GridColDef<AdminCityStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city.name', {
        defaultValue: 'Name',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'county',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city.county', {
        defaultValue: 'County',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const cityRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCityRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCityNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city.name.Filter', {
        defaultValue: 'Name',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCityCountyFilter',
      attributeName: 'county',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city.county.Filter', {
        defaultValue: 'County',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const cityInitialQueryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{representation,name,county}',
    _orderBy: citySortModel.length
      ? [
          {
            attribute: citySortModel[0].field,
            descending: citySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const cityRangeCall = async () =>
    openRangeDialog<AdminCityStored, AdminCityQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputCity',
      columns: cityColumns,
      defaultSortField: citySortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminCreateIssueInputServiceImpl.getRangeForCity(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: citySelectionModel,
      filterOptions: cityRangeFilterOptions,
      initialQueryCustomizer: cityInitialQueryCustomizer,
    });
  const [citySelectionModel, setCitySelectionModel] = useState<GridRowSelectionModel>([]);
  const [countySortModel, setCountySortModel] = useState<GridSortModel>([{ field: 'representation', sort: 'asc' }]);

  const countyColumns: GridColDef<AdminCountyStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.county.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.county.name', {
        defaultValue: 'Name',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const countyRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCountyRepresentationFilter',
      attributeName: 'representation',
      label: t(
        'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.county.representation.Filter',
        { defaultValue: 'Representation' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCountyNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.county.name.Filter', {
        defaultValue: 'Name',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const countyInitialQueryCustomizer: AdminCountyQueryCustomizer = {
    _mask: '{representation,name}',
    _orderBy: countySortModel.length
      ? [
          {
            attribute: countySortModel[0].field,
            descending: countySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const countyRangeCall = async () =>
    openRangeDialog<AdminCountyStored, AdminCountyQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputCounty',
      columns: countyColumns,
      defaultSortField: countySortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminCreateIssueInputServiceImpl.getRangeForCounty(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: countySelectionModel,
      filterOptions: countyRangeFilterOptions,
      initialQueryCustomizer: countyInitialQueryCustomizer,
    });
  const [countySelectionModel, setCountySelectionModel] = useState<GridRowSelectionModel>([]);
  const [districtSortModel, setDistrictSortModel] = useState<GridSortModel>([{ field: 'representation', sort: 'asc' }]);

  const districtColumns: GridColDef<AdminDistrictStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t(
        'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.representation',
        { defaultValue: 'Representation' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.name', {
        defaultValue: 'Name',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'county',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.county', {
        defaultValue: 'County',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'city',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.city', {
        defaultValue: 'City',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const districtRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDistrictRepresentationFilter',
      attributeName: 'representation',
      label: t(
        'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.representation.Filter',
        { defaultValue: 'Representation' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDistrictNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.name.Filter', {
        defaultValue: 'Name',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDistrictCountyFilter',
      attributeName: 'county',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.county.Filter', {
        defaultValue: 'County',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDistrictCityFilter',
      attributeName: 'city',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district.city.Filter', {
        defaultValue: 'City',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const districtInitialQueryCustomizer: AdminDistrictQueryCustomizer = {
    _mask: '{representation,name,county,city}',
    _orderBy: districtSortModel.length
      ? [
          {
            attribute: districtSortModel[0].field,
            descending: districtSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const districtRangeCall = async () =>
    openRangeDialog<AdminDistrictStored, AdminDistrictQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputDistrict',
      columns: districtColumns,
      defaultSortField: districtSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminCreateIssueInputServiceImpl.getRangeForDistrict(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: districtSelectionModel,
      filterOptions: districtRangeFilterOptions,
      initialQueryCustomizer: districtInitialQueryCustomizer,
    });
  const [districtSelectionModel, setDistrictSelectionModel] = useState<GridRowSelectionModel>([]);
  const [issueTypeSortModel, setIssueTypeSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);

  const issueTypeColumns: GridColDef<AdminIssueTypeStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t(
        'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType.representation',
        { defaultValue: 'Representation' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType.description', {
        defaultValue: 'Description',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const issueTypeRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueIssueTypeRepresentationFilter',
      attributeName: 'representation',
      label: t(
        'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType.representation.Filter',
        { defaultValue: 'Representation' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueIssueTypeTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueIssueTypeDescriptionFilter',
      attributeName: 'description',
      label: t(
        'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType.description.Filter',
        { defaultValue: 'Description' },
      ) as string,
      filterType: FilterType.string,
    },
  ];

  const issueTypeInitialQueryCustomizer: AdminIssueTypeQueryCustomizer = {
    _mask: '{representation,title,description}',
    _orderBy: issueTypeSortModel.length
      ? [
          {
            attribute: issueTypeSortModel[0].field,
            descending: issueTypeSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const issueTypeRangeCall = async () =>
    openRangeDialog<AdminIssueTypeStored, AdminIssueTypeQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputIssueType',
      columns: issueTypeColumns,
      defaultSortField: issueTypeSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminCreateIssueInputServiceImpl.getRangeForIssueType(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: issueTypeSelectionModel,
      filterOptions: issueTypeRangeFilterOptions,
      initialQueryCustomizer: issueTypeInitialQueryCustomizer,
    });
  const [issueTypeSelectionModel, setIssueTypeSelectionModel] = useState<GridRowSelectionModel>([]);

  const isFormUpdateable = useCallback(() => {
    return true;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false;
  }, [data]);

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminCreateIssueInputServiceImpl.getTemplate();
      setData(res);
      setPayloadDiff({
        ...res,
      } as Record<keyof AdminCreateIssueInput, any>);
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
      const res = await adminDashboardServiceImpl.createIssue(payloadDiff);

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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueButtonCallOperation-dialog-close"
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
                      <Grid item xs={12} sm={12}>
                        <AggregationInput
                          name="issueType"
                          id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueIssueType"
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.issueType', {
                              defaultValue: 'Issue type',
                            }) as string
                          }
                          labelList={[
                            data.issueType?.representation?.toString() ?? '',
                            data.issueType?.title?.toString() ?? '',
                            data.issueType?.description?.toString() ?? '',
                          ]}
                          value={data.issueType}
                          error={!!validation.get('issueType')}
                          helperText={validation.get('issueType')}
                          icon={<MdiIcon path="folder-open" />}
                          disabled={false || !isFormUpdateable()}
                          editMode={editMode}
                          onSet={async () => {
                            const res = await openRangeDialog<AdminIssueTypeStored, AdminIssueTypeQueryCustomizer>({
                              id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputIssueType',
                              columns: issueTypeColumns,
                              defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                              rangeCall: async (queryCustomizer) =>
                                await adminCreateIssueInputServiceImpl.getRangeForIssueType(
                                  data,
                                  processQueryCustomizer(queryCustomizer),
                                ),
                              single: true,
                              alreadySelectedItems: data.issueType?.__identifier as GridRowId,
                              filterOptions: issueTypeRangeFilterOptions,
                              initialQueryCustomizer: issueTypeInitialQueryCustomizer,
                            });

                            if (res === undefined) return;

                            setEditMode(true);
                            storeDiff('issueType', res as AdminIssueTypeStored);
                          }}
                          onUnset={async () => {
                            setEditMode(true);
                            storeDiff('issueType', null);
                          }}
                        />
                      </Grid>

                      <Grid item xs={12} sm={12} md={4.0}>
                        <TextField
                          required
                          name="title"
                          id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueTitle"
                          autoFocus
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.title', {
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
                              id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDebateCloseAt',
                              helperText: validation.get('debateCloseAt'),
                              error: !!validation.get('debateCloseAt'),
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
                              const copy = new Map<keyof AdminCreateIssueInput, string>(prevValidation);
                              copy.set(
                                'debateCloseAt',
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
                            t(
                              'edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.debateCloseAt',
                              { defaultValue: 'Debate close at' },
                            ) as string
                          }
                          value={serviceDateToUiDate(data.debateCloseAt ?? null)}
                          disabled={false || !isFormUpdateable()}
                          onChange={(newValue: Date) => {
                            setEditMode(true);
                            storeDiff('debateCloseAt', newValue);
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

                      <Grid item xs={12} sm={12} md={4.0}>
                        <AggregationInput
                          name="city"
                          id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCity"
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.city', {
                              defaultValue: 'City',
                            }) as string
                          }
                          labelList={[
                            data.city?.representation?.toString() ?? '',
                            data.city?.name?.toString() ?? '',
                            data.city?.county?.toString() ?? '',
                          ]}
                          value={data.city}
                          error={!!validation.get('city')}
                          helperText={validation.get('city')}
                          icon={<MdiIcon path="map" />}
                          disabled={false || !isFormUpdateable()}
                          editMode={editMode}
                          onSet={async () => {
                            const res = await openRangeDialog<AdminCityStored, AdminCityQueryCustomizer>({
                              id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputCity',
                              columns: cityColumns,
                              defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                              rangeCall: async (queryCustomizer) =>
                                await adminCreateIssueInputServiceImpl.getRangeForCity(
                                  data,
                                  processQueryCustomizer(queryCustomizer),
                                ),
                              single: true,
                              alreadySelectedItems: data.city?.__identifier as GridRowId,
                              filterOptions: cityRangeFilterOptions,
                              initialQueryCustomizer: cityInitialQueryCustomizer,
                            });

                            if (res === undefined) return;

                            setEditMode(true);
                            storeDiff('city', res as AdminCityStored);
                          }}
                          onUnset={async () => {
                            setEditMode(true);
                            storeDiff('city', null);
                          }}
                        />
                      </Grid>

                      <Grid item xs={12} sm={12} md={4.0}>
                        <AggregationInput
                          name="county"
                          id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueCounty"
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.county', {
                              defaultValue: 'County',
                            }) as string
                          }
                          labelList={[
                            data.county?.representation?.toString() ?? '',
                            data.county?.name?.toString() ?? '',
                          ]}
                          value={data.county}
                          error={!!validation.get('county')}
                          helperText={validation.get('county')}
                          icon={<MdiIcon path="city" />}
                          disabled={false || !isFormUpdateable()}
                          editMode={editMode}
                          onSet={async () => {
                            const res = await openRangeDialog<AdminCountyStored, AdminCountyQueryCustomizer>({
                              id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputCounty',
                              columns: countyColumns,
                              defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                              rangeCall: async (queryCustomizer) =>
                                await adminCreateIssueInputServiceImpl.getRangeForCounty(
                                  data,
                                  processQueryCustomizer(queryCustomizer),
                                ),
                              single: true,
                              alreadySelectedItems: data.county?.__identifier as GridRowId,
                              filterOptions: countyRangeFilterOptions,
                              initialQueryCustomizer: countyInitialQueryCustomizer,
                            });

                            if (res === undefined) return;

                            setEditMode(true);
                            storeDiff('county', res as AdminCountyStored);
                          }}
                          onUnset={async () => {
                            setEditMode(true);
                            storeDiff('county', null);
                          }}
                        />
                      </Grid>

                      <Grid item xs={12} sm={12} md={4.0}>
                        <AggregationInput
                          name="district"
                          id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueInputDefaultCreateIssueInputFormIssueLabelWrapperIssueDistrict"
                          label={
                            t('edemokracia.admin.Dashboard.createIssue.CreateIssueInput.Form.issue.issue.district', {
                              defaultValue: 'District',
                            }) as string
                          }
                          labelList={[
                            data.district?.representation?.toString() ?? '',
                            data.district?.name?.toString() ?? '',
                            data.district?.county?.toString() ?? '',
                            data.district?.city?.toString() ?? '',
                          ]}
                          value={data.district}
                          error={!!validation.get('district')}
                          helperText={validation.get('district')}
                          icon={<MdiIcon path="home-city" />}
                          disabled={false || !isFormUpdateable()}
                          editMode={editMode}
                          onSet={async () => {
                            const res = await openRangeDialog<AdminDistrictStored, AdminDistrictQueryCustomizer>({
                              id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminCreateIssueInputDistrict',
                              columns: districtColumns,
                              defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                              rangeCall: async (queryCustomizer) =>
                                await adminCreateIssueInputServiceImpl.getRangeForDistrict(
                                  data,
                                  processQueryCustomizer(queryCustomizer),
                                ),
                              single: true,
                              alreadySelectedItems: data.district?.__identifier as GridRowId,
                              filterOptions: districtRangeFilterOptions,
                              initialQueryCustomizer: districtInitialQueryCustomizer,
                            });

                            if (res === undefined) return;

                            setEditMode(true);
                            storeDiff('district', res as AdminDistrictStored);
                          }}
                          onUnset={async () => {
                            setEditMode(true);
                            storeDiff('district', null);
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueButtonCallOperation-action-form-action-cancel"
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
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeViewEdemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueButtonCallOperation-action-form-action-submit"
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
