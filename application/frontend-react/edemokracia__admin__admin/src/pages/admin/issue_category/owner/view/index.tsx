///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::IssueCategory.owner#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: owner
// Page DataElement owner name: edemokracia::admin::IssueCategory

import { useEffect, useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Button,
  Card,
  CardContent,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Paper,
  Divider,
  RadioGroup,
  FormControlLabel,
  Radio,
} from '@mui/material';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSortItem,
  GridToolbarContainer,
  GridRowParams,
} from '@mui/x-data-grid';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import { useParams } from 'react-router-dom';
import type { Dayjs } from 'dayjs';
import {
  columnsActionCalculator,
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  TrinaryLogicCombobox,
  useJudoNavigation,
  useRangeDialog,
  AggregationInput,
  useSnackbar,
} from '../../../../../components';
import {
  errorHandling,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminDistrictQueryCustomizer,
  AdminIssueCategoryStored,
  AdminCountyMaskBuilder,
  AdminIssueCategory,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminUser,
  AdminDistrictMaskBuilder,
  AdminCityStored,
  AdminCountyStored,
} from '../../../../../generated/data-api';
import { adminIssueCategoryServiceImpl, adminUserServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminIssueCategoryOwnerView } from './hooks/useAdminIssueCategoryOwnerView';
import {
  useLinkViewResidentCountyAction,
  useRowEditActivityCountiesAction,
  useRowEditActivityDistrictsAction,
  useButtonNavigateVotesAction,
  usePageRefreshOwnerAction,
  useLinkEditResidentDistrictAction,
  useRowEditActivityCitiesAction,
  useLinkViewResidentDistrictAction,
  useRowViewActivityDistrictsAction,
  useRowViewActivityCountiesAction,
  useLinkEditResidentCityAction,
  useLinkEditResidentCountyAction,
  useLinkViewResidentCityAction,
  useRowViewActivityCitiesAction,
} from './actions';

/**
 * Name: edemokracia::admin::IssueCategory.owner#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminIssueCategoryOwnerView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const linkViewResidentCountyAction = useLinkViewResidentCountyAction();
  const rowEditActivityCountiesAction = useRowEditActivityCountiesAction();
  const rowEditActivityDistrictsAction = useRowEditActivityDistrictsAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const pageRefreshOwnerAction = usePageRefreshOwnerAction();
  const linkEditResidentDistrictAction = useLinkEditResidentDistrictAction();
  const rowEditActivityCitiesAction = useRowEditActivityCitiesAction();
  const linkViewResidentDistrictAction = useLinkViewResidentDistrictAction();
  const rowViewActivityDistrictsAction = useRowViewActivityDistrictsAction();
  const rowViewActivityCountiesAction = useRowViewActivityCountiesAction();
  const linkEditResidentCityAction = useLinkEditResidentCityAction();
  const linkEditResidentCountyAction = useLinkEditResidentCountyAction();
  const linkViewResidentCityAction = useLinkViewResidentCityAction();
  const rowViewActivityCitiesAction = useRowViewActivityCitiesAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();
  const {
    queryCustomizer,
    activityCitiesColumns,
    activityCitiesRangeFilterOptions,
    activityCitiesInitialQueryCustomizer,
    activityDistrictsColumns,
    activityDistrictsRangeFilterOptions,
    activityDistrictsInitialQueryCustomizer,
    activityCountiesColumns,
    activityCountiesRangeFilterOptions,
    activityCountiesInitialQueryCustomizer,
    residentCityColumns,
    residentCityRangeFilterOptions,
    residentCityInitialQueryCustomizer,
    residentCountyColumns,
    residentCountyRangeFilterOptions,
    residentCountyInitialQueryCustomizer,
    residentDistrictColumns,
    residentDistrictRangeFilterOptions,
    residentDistrictInitialQueryCustomizer,
  } = useAdminIssueCategoryOwnerView();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminUserStored>({} as unknown as AdminUserStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<string, any>>({});
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [activityCitiesSortModel, setActivityCitiesSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);
  const [activityDistrictsSortModel, setActivityDistrictsSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);
  const [activityCountiesSortModel, setActivityCountiesSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);

  const activityCitiesRowActions: TableRowAction<AdminCityStored>[] = [];
  const activityDistrictsRowActions: TableRowAction<AdminDistrictStored>[] = [];
  const activityCountiesRowActions: TableRowAction<AdminCountyStored>[] = [];
  const title: string = t('edemokracia.admin.IssueCategory.owner.View', { defaultValue: 'View / Edit User' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await adminUserServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminUser>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<string, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid item>
            <Button onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
            </Button>
          </Grid>
        )}
      </PageHeader>
      <Container component="main" maxWidth="xl">
        <Box sx={mainContainerPadding}>
          <Grid
            container
            xs={12}
            sm={12}
            spacing={2}
            direction="column"
            alignItems="stretch"
            justifyContent="flex-start"
          >
            <Grid item xs={12} sm={12}>
              <Card>
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="security" />
                        <Typography variant="h6" component="h1">
                          {t('edemokracia.admin.IssueCategory.owner.User.View.Security.Security.Label', {
                            defaultValue: 'Security',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            name="userName"
                            id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/Security/LabelWrapper/Security/userName"
                            label={
                              t('edemokracia.admin.IssueCategory.owner.User.View.Security.Security.userName', {
                                defaultValue: 'Username',
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

                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            name="isAdmin"
                            id="Switch@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/Security/LabelWrapper/Security/isAdmin"
                            label={
                              t('edemokracia.admin.IssueCategory.owner.User.View.Security.Security.isAdmin', {
                                defaultValue: 'Has admin access',
                              }) as string
                            }
                            select
                            value={booleanToStringSelect(data.isAdmin)}
                            error={!!validation.get('isAdmin')}
                            helperText={validation.get('isAdmin')}
                            onChange={(event) => {
                              storeDiff('isAdmin', stringToBooleanSelect(event.target.value));
                            }}
                            className={false || !editMode ? 'Mui-readOnly' : undefined}
                            InputLabelProps={{ shrink: true }}
                            InputProps={{
                              readOnly: false || !editMode,
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="check_box" />
                                </InputAdornment>
                              ),
                            }}
                          >
                            <MenuItem value={'true'}>
                              {t('judo.form.switch.true', { defaultValue: 'Yes' }) as string}
                            </MenuItem>
                            <MenuItem value={'false'}>
                              {t('judo.form.switch.false', { defaultValue: 'No' }) as string}
                            </MenuItem>
                            <MenuItem value={' '}>
                              {t('judo.form.switch.unknown', { defaultValue: 'Unknown' }) as string}
                            </MenuItem>
                          </TextField>
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <DateTimePicker
                            renderInput={(props: any) => (
                              <TextField
                                {...props}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.IssueCategory.owner.User.View.Security.Security.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={data.created ?? null}
                            className={false || !editMode ? 'Mui-readOnly' : undefined}
                            readOnly={false || !editMode}
                            onChange={(newValue: any) => storeDiff('created', newValue)}
                            InputProps={{
                              startAdornment: (
                                <InputAdornment position="start">
                                  <MdiIcon path="schedule" />
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
              <Card>
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="card-account-details" />
                        <Typography variant="h6" component="h1">
                          {t('edemokracia.admin.IssueCategory.owner.User.View.personal.personal.Label', {
                            defaultValue: 'Personal',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid
                            container
                            direction="row"
                            alignItems="flex-start"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12} md={4.0}>
                              <TextField
                                name="firstName"
                                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/personal/LabelWrapper/personal/name/firstName"
                                label={
                                  t(
                                    'edemokracia.admin.IssueCategory.owner.User.View.personal.personal.name.firstName',
                                    { defaultValue: 'First name' },
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

                            <Grid item xs={12} sm={12} md={4.0}>
                              <TextField
                                name="lastName"
                                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/personal/LabelWrapper/personal/name/lastName"
                                label={
                                  t('edemokracia.admin.IssueCategory.owner.User.View.personal.personal.name.lastName', {
                                    defaultValue: 'Last name',
                                  }) as string
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
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            container
                            direction="row"
                            alignItems="flex-start"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12} md={4.0}>
                              <TextField
                                name="email"
                                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/personal/LabelWrapper/personal/contact/email"
                                label={
                                  t('edemokracia.admin.IssueCategory.owner.User.View.personal.personal.contact.email', {
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

                            <Grid item xs={12} sm={12} md={4.0}>
                              <TextField
                                name="phone"
                                id="TextInput@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/personal/LabelWrapper/personal/contact/phone"
                                label={
                                  t('edemokracia.admin.IssueCategory.owner.User.View.personal.personal.contact.phone', {
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

                        <Grid item xs={12} sm={12}>
                          <Button onClick={() => buttonNavigateVotesAction(data)} disabled={isLoading || editMode}>
                            <MdiIcon path="table_rows" />
                            {t('edemokracia.admin.IssueCategory.owner.User.View.personal.personal.votes', {
                              defaultValue: 'Votes',
                            })}
                          </Button>
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid item xs={12} sm={12}>
              <Card>
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="map" />
                        <Typography variant="h6" component="h1">
                          {t('edemokracia.admin.IssueCategory.owner.User.View.Areas.Areas.Label', {
                            defaultValue: 'Areas',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="stretch" justifyContent="center" spacing={2}>
                        <Grid item xs={12} sm={12}>
                          <Grid
                            container
                            direction="row"
                            alignItems="flex-start"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12} md={4.0}>
                              <AggregationInput
                                name="residentCounty"
                                id="Link@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/Areas/LabelWrapper/Areas/Residency/residentCounty"
                                label={
                                  t(
                                    'edemokracia.admin.IssueCategory.owner.User.View.Areas.Areas.Residency.residentCounty',
                                    { defaultValue: 'Resident county' },
                                  ) as string
                                }
                                labelList={[data.residentCounty?.representation?.toString() ?? '']}
                                value={data.residentCounty}
                                error={!!validation.get('residentCounty')}
                                helperText={validation.get('residentCounty')}
                                icon={<MdiIcon path="map" />}
                                readonly={false || !editMode}
                                onView={async () => linkViewResidentCountyAction(data?.residentCounty!)}
                              />
                            </Grid>

                            <Grid item xs={12} sm={12} md={4.0}>
                              <AggregationInput
                                name="residentCity"
                                id="Link@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/Areas/LabelWrapper/Areas/Residency/residentCity"
                                label={
                                  t(
                                    'edemokracia.admin.IssueCategory.owner.User.View.Areas.Areas.Residency.residentCity',
                                    { defaultValue: 'Resident city' },
                                  ) as string
                                }
                                labelList={[data.residentCity?.representation?.toString() ?? '']}
                                value={data.residentCity}
                                error={!!validation.get('residentCity')}
                                helperText={validation.get('residentCity')}
                                icon={<MdiIcon path="city" />}
                                readonly={false || !editMode}
                                onView={async () => linkViewResidentCityAction(data?.residentCity!)}
                              />
                            </Grid>

                            <Grid item xs={12} sm={12} md={4.0}>
                              <AggregationInput
                                name="residentDistrict"
                                id="Link@edemokracia/admin/Admin/edemokracia/admin/IssueCategory.owner/View/default/User_View/Areas/LabelWrapper/Areas/Residency/residentDistrict"
                                label={
                                  t(
                                    'edemokracia.admin.IssueCategory.owner.User.View.Areas.Areas.Residency.residentDistrict',
                                    { defaultValue: 'Resident district' },
                                  ) as string
                                }
                                labelList={[data.residentDistrict?.representation?.toString() ?? '']}
                                value={data.residentDistrict}
                                error={!!validation.get('residentDistrict')}
                                helperText={validation.get('residentDistrict')}
                                icon={<MdiIcon path="home-city" />}
                                readonly={false || !editMode}
                                onView={async () => linkViewResidentDistrictAction(data?.residentDistrict!)}
                              />
                            </Grid>
                          </Grid>
                        </Grid>

                        <Grid container item xs={12} sm={12}>
                          <ModeledTabs
                            activeIndex={0}
                            childTabs={[
                              {
                                id: 'tab_activity_counties',
                                name: 'tab_activity_counties',
                                label: 'Activity counties',
                              },
                              {
                                id: 'activity_cities',
                                name: 'activity_cities',
                                label: 'Activity cities',
                              },
                              {
                                id: 'activity_districts',
                                name: 'activity_districts',
                                label: 'Activity districts',
                              },
                            ]}
                          >
                            <Grid item xs={12} sm={12}>
                              <Grid
                                container
                                direction="row"
                                alignItems="flex-start"
                                justifyContent="flex-start"
                                spacing={2}
                              >
                                <Grid item xs={12} sm={12}>
                                  <Grid
                                    container
                                    direction="column"
                                    alignItems="stretch"
                                    justifyContent="flex-start"
                                    spacing={2}
                                  >
                                    <Grid item xs={12} sm={12}>
                                      <Grid
                                        container
                                        direction="column"
                                        alignItems="stretch"
                                        justifyContent="flex-start"
                                      >
                                        <DataGrid
                                          {...baseTableConfig}
                                          getRowId={(row: { __identifier: string }) => row.__identifier}
                                          loading={isLoading}
                                          rows={data?.activityCounties ?? []}
                                          columns={[
                                            ...activityCountiesColumns,
                                            ...columnsActionCalculator(activityCountiesRowActions, { shownActions: 2 }),
                                          ]}
                                          disableSelectionOnClick
                                          onRowClick={(params: GridRowParams<AdminCountyStored>) =>
                                            rowViewActivityCountiesAction(params.row)
                                          }
                                          sortModel={activityCountiesSortModel}
                                          onSortModelChange={(newModel: GridSortModel) => {
                                            setActivityCountiesSortModel(newModel);
                                          }}
                                          components={{
                                            Toolbar: () => <div>{/* No actions defined */}</div>,
                                          }}
                                        />
                                      </Grid>
                                    </Grid>
                                  </Grid>
                                </Grid>
                              </Grid>
                            </Grid>

                            <Grid item xs={12} sm={12} md={4.0}>
                              <Grid
                                container
                                direction="row"
                                alignItems="flex-start"
                                justifyContent="flex-start"
                                spacing={2}
                              >
                                <Grid item xs={12} sm={12}>
                                  <Grid
                                    container
                                    direction="column"
                                    alignItems="stretch"
                                    justifyContent="flex-start"
                                    spacing={2}
                                  >
                                    <Grid item xs={12} sm={12}>
                                      <Grid
                                        container
                                        direction="column"
                                        alignItems="stretch"
                                        justifyContent="flex-start"
                                      >
                                        <DataGrid
                                          {...baseTableConfig}
                                          getRowId={(row: { __identifier: string }) => row.__identifier}
                                          loading={isLoading}
                                          rows={data?.activityCities ?? []}
                                          columns={[
                                            ...activityCitiesColumns,
                                            ...columnsActionCalculator(activityCitiesRowActions, { shownActions: 2 }),
                                          ]}
                                          disableSelectionOnClick
                                          onRowClick={(params: GridRowParams<AdminCityStored>) =>
                                            rowViewActivityCitiesAction(params.row)
                                          }
                                          sortModel={activityCitiesSortModel}
                                          onSortModelChange={(newModel: GridSortModel) => {
                                            setActivityCitiesSortModel(newModel);
                                          }}
                                          components={{
                                            Toolbar: () => <div>{/* No actions defined */}</div>,
                                          }}
                                        />
                                      </Grid>
                                    </Grid>
                                  </Grid>
                                </Grid>
                              </Grid>
                            </Grid>

                            <Grid item xs={12} sm={12}>
                              <Grid
                                container
                                direction="row"
                                alignItems="flex-start"
                                justifyContent="flex-start"
                                spacing={2}
                              >
                                <Grid item xs={12} sm={12}>
                                  <Grid
                                    container
                                    direction="column"
                                    alignItems="stretch"
                                    justifyContent="flex-start"
                                    spacing={2}
                                  >
                                    <Grid item xs={12} sm={12}>
                                      <Grid
                                        container
                                        direction="column"
                                        alignItems="stretch"
                                        justifyContent="flex-start"
                                      >
                                        <DataGrid
                                          {...baseTableConfig}
                                          getRowId={(row: { __identifier: string }) => row.__identifier}
                                          loading={isLoading}
                                          rows={data?.activityDistricts ?? []}
                                          columns={[
                                            ...activityDistrictsColumns,
                                            ...columnsActionCalculator(activityDistrictsRowActions, {
                                              shownActions: 2,
                                            }),
                                          ]}
                                          disableSelectionOnClick
                                          onRowClick={(params: GridRowParams<AdminDistrictStored>) =>
                                            rowViewActivityDistrictsAction(params.row)
                                          }
                                          sortModel={activityDistrictsSortModel}
                                          onSortModelChange={(newModel: GridSortModel) => {
                                            setActivityDistrictsSortModel(newModel);
                                          }}
                                          components={{
                                            Toolbar: () => <div>{/* No actions defined */}</div>,
                                          }}
                                        />
                                      </Grid>
                                    </Grid>
                                  </Grid>
                                </Grid>
                              </Grid>
                            </Grid>
                          </ModeledTabs>
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
