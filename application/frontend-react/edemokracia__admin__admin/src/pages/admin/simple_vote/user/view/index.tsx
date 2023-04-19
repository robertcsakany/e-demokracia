//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::SimpleVote.user#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: user
// Page DataElement owner name: edemokracia::admin::SimpleVote

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Container,
  Grid,
  Button,
  Card,
  CardContent,
  Checkbox,
  FormControlLabel,
  FormGroup,
  InputAdornment,
  MenuItem,
  TextField,
  Typography,
} from '@mui/material';
import {
  DataGrid,
  GridColDef,
  GridRenderCellParams,
  GridRowId,
  GridRowParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridToolbarContainer,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { DateTimePicker } from '@mui/x-date-pickers';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import { useSnackbar } from 'notistack';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../../components';
import { useConfirmationBeforeChange } from '../../../../../hooks';
import { columnsActionCalculator } from '../../../../../components/table';
import { useRangeDialog } from '../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  BinaryInput,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../components/widgets';
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
} from '../../../../../utilities';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminDistrictQueryCustomizer,
  AdminCountyMaskBuilder,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminUser,
  AdminDistrictMaskBuilder,
  AdminCityStored,
  AdminCountyStored,
  AdminSimpleVoteStored,
} from '../../../../../generated/data-api';
import { adminSimpleVoteServiceImpl, adminUserServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminSimpleVoteUserView } from './hooks/useAdminSimpleVoteUserView';
import {
  useLinkEditResidentCityAction,
  useRowEditActivityCitiesAction,
  useLinkViewResidentDistrictAction,
  usePageRefreshUserAction,
  useRowEditActivityCountiesAction,
  useButtonNavigateVotesAction,
  useLinkViewResidentCountyAction,
  useLinkEditResidentCountyAction,
  useRowViewActivityCountiesAction,
  useRowEditActivityDistrictsAction,
  useLinkEditResidentDistrictAction,
  useLinkViewResidentCityAction,
  useRowViewActivityCitiesAction,
  useRowViewActivityDistrictsAction,
} from './actions';

/**
 * Name: edemokracia::admin::SimpleVote.user#View
 * Is Access: false
 * Type: View
 * Edit Mode Available: false
 **/
export default function AdminSimpleVoteUserView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const linkEditResidentCityAction = useLinkEditResidentCityAction();
  const rowEditActivityCitiesAction = useRowEditActivityCitiesAction();
  const linkViewResidentDistrictAction = useLinkViewResidentDistrictAction();
  const pageRefreshUserAction = usePageRefreshUserAction();
  const rowEditActivityCountiesAction = useRowEditActivityCountiesAction();
  const buttonNavigateVotesAction = useButtonNavigateVotesAction();
  const linkViewResidentCountyAction = useLinkViewResidentCountyAction();
  const linkEditResidentCountyAction = useLinkEditResidentCountyAction();
  const rowViewActivityCountiesAction = useRowViewActivityCountiesAction();
  const rowEditActivityDistrictsAction = useRowEditActivityDistrictsAction();
  const linkEditResidentDistrictAction = useLinkEditResidentDistrictAction();
  const linkViewResidentCityAction = useLinkViewResidentCityAction();
  const rowViewActivityCitiesAction = useRowViewActivityCitiesAction();
  const rowViewActivityDistrictsAction = useRowViewActivityDistrictsAction();

  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
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
  } = useAdminSimpleVoteUserView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminUserStored>({} as unknown as AdminUserStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminUserStored, any>>(
    {} as unknown as Record<keyof AdminUserStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminUserStored, value: any) => void = useCallback(
    (attributeName: keyof AdminUserStored, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminUserStored, string>>(new Map());
  const [activityCitiesSortModel, setActivityCitiesSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);
  const activityCitiesRangeCall = async () =>
    openRangeDialog<AdminCityStored, AdminCityQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityCities',
      columns: activityCitiesColumns,
      defaultSortField: activityCitiesSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminUserServiceImpl.getRangeForActivityCities(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: activityCitiesSelectionModel,
      filterOptions: activityCitiesRangeFilterOptions,
      initialQueryCustomizer: activityCitiesInitialQueryCustomizer,
    });
  const [activityCitiesSelectionModel, setActivityCitiesSelectionModel] = useState<GridSelectionModel>([]);
  const [activityDistrictsSortModel, setActivityDistrictsSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);
  const activityDistrictsRangeCall = async () =>
    openRangeDialog<AdminDistrictStored, AdminDistrictQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityDistricts',
      columns: activityDistrictsColumns,
      defaultSortField: activityDistrictsSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminUserServiceImpl.getRangeForActivityDistricts(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: activityDistrictsSelectionModel,
      filterOptions: activityDistrictsRangeFilterOptions,
      initialQueryCustomizer: activityDistrictsInitialQueryCustomizer,
    });
  const [activityDistrictsSelectionModel, setActivityDistrictsSelectionModel] = useState<GridSelectionModel>([]);
  const [activityCountiesSortModel, setActivityCountiesSortModel] = useState<GridSortModel>([
    { field: 'representation', sort: 'asc' },
  ]);
  const activityCountiesRangeCall = async () =>
    openRangeDialog<AdminCountyStored, AdminCountyQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityCounties',
      columns: activityCountiesColumns,
      defaultSortField: activityCountiesSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminUserServiceImpl.getRangeForActivityCounties(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: activityCountiesSelectionModel,
      filterOptions: activityCountiesRangeFilterOptions,
      initialQueryCustomizer: activityCountiesInitialQueryCustomizer,
    });
  const [activityCountiesSelectionModel, setActivityCountiesSelectionModel] = useState<GridSelectionModel>([]);

  const activityCitiesRowActions: TableRowAction<AdminCityStored>[] = [
    {
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityCities-remove',
      label: t('judo.pages.table.remove', { defaultValue: 'Remove' }) as string,
      icon: <MdiIcon path="link_off" />,
      action: async (row: AdminCityStored) => {
        setEditMode(true);
        storeDiff('activityCities', [
          ...(data.activityCities || []).filter(
            (e: AdminCityStored) => e.__signedIdentifier !== row.__signedIdentifier,
          ),
        ]);
      },
    },
  ];
  const activityDistrictsRowActions: TableRowAction<AdminDistrictStored>[] = [
    {
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityDistricts-remove',
      label: t('judo.pages.table.remove', { defaultValue: 'Remove' }) as string,
      icon: <MdiIcon path="link_off" />,
      action: async (row: AdminDistrictStored) => {
        setEditMode(true);
        storeDiff('activityDistricts', [
          ...(data.activityDistricts || []).filter(
            (e: AdminDistrictStored) => e.__signedIdentifier !== row.__signedIdentifier,
          ),
        ]);
      },
    },
  ];
  const activityCountiesRowActions: TableRowAction<AdminCountyStored>[] = [
    {
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityCounties-remove',
      label: t('judo.pages.table.remove', { defaultValue: 'Remove' }) as string,
      icon: <MdiIcon path="link_off" />,
      action: async (row: AdminCountyStored) => {
        setEditMode(true);
        storeDiff('activityCounties', [
          ...(data.activityCounties || []).filter(
            (e: AdminCountyStored) => e.__signedIdentifier !== row.__signedIdentifier,
          ),
        ]);
      },
    },
  ];
  const title: string = t('edemokracia.admin.SimpleVote.user.View', { defaultValue: 'View / Edit User' });

  const isFormUpdateable = useCallback(() => {
    return false && typeof data?.__updateable === 'boolean' && data?.__updateable;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return false && typeof data?.__deleteable === 'boolean' && data?.__deleteable;
  }, [data]);

  useConfirmationBeforeChange(
    editMode,
    t('judo.form.navigation.confirmation', {
      defaultValue: 'You have potential unsaved changes in your form, are you sure you would like to navigate away?',
    }),
  );

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
      } as Record<keyof AdminUserStored, any>);
    } catch (error) {
      handleFetchError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  useEffect(() => {
    setValidation(new Map<keyof AdminUserStored, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewSecurityLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="security" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewSecurityLabelWrapperSecurityLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.SimpleVote.user.User.View.Security.Security.Label', {
                            defaultValue: 'Security',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewSecurityLabelWrapperSecurity"
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
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewSecurityLabelWrapperSecurityUserName"
                            label={
                              t('edemokracia.admin.SimpleVote.user.User.View.Security.Security.userName', {
                                defaultValue: 'Username',
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
                                  value={data.isAdmin}
                                  onChange={(event) => {
                                    setEditMode(true);
                                    storeDiff('isAdmin', String(event.target.value).toLowerCase() === 'true');
                                  }}
                                />
                              }
                              label={
                                t('edemokracia.admin.SimpleVote.user.User.View.Security.Security.isAdmin', {
                                  defaultValue: 'Has admin access',
                                }) as string
                              }
                            />
                          </FormGroup>
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <DateTimePicker
                            ampm={false}
                            ampmInClock={false}
                            renderInput={(props: any) => (
                              <TextField
                                {...props}
                                id="DateTimeInputedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewSecurityLabelWrapperSecurityCreated"
                                className={!editMode ? 'JUDO-viewMode' : undefined}
                                error={!!validation.get('created')}
                                helperText={validation.get('created')}
                              />
                            )}
                            label={
                              t('edemokracia.admin.SimpleVote.user.User.View.Security.Security.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={serviceDateToUiDate(data.created ?? null)}
                            disabled={false || !isFormUpdateable()}
                            onChange={(newValue: any) => {
                              setEditMode(true);
                              storeDiff('created', newValue);
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
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid item xs={12} sm={12}>
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="card-account-details" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.SimpleVote.user.User.View.personal.personal.Label', {
                            defaultValue: 'Personal',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonal"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalName"
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
                                id="TextInputedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalNameFirstName"
                                label={
                                  t('edemokracia.admin.SimpleVote.user.User.View.personal.personal.name.firstName', {
                                    defaultValue: 'First name',
                                  }) as string
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
                                id="TextInputedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalNameLastName"
                                label={
                                  t('edemokracia.admin.SimpleVote.user.User.View.personal.personal.name.lastName', {
                                    defaultValue: 'Last name',
                                  }) as string
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
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalContact"
                            container
                            direction="row"
                            alignItems="flex-start"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12} md={4.0}>
                              <TextField
                                required
                                name="email"
                                id="TextInputedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalContactEmail"
                                label={
                                  t('edemokracia.admin.SimpleVote.user.User.View.personal.personal.contact.email', {
                                    defaultValue: 'Email',
                                  }) as string
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
                                id="TextInputedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewPersonalLabelWrapperPersonalContactPhone"
                                label={
                                  t('edemokracia.admin.SimpleVote.user.User.View.personal.personal.contact.phone', {
                                    defaultValue: 'Phone',
                                  }) as string
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

                        <Grid item xs={12} sm={12}>
                          <CollectionAssociationButton
                            id="NavigationToPageActionedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewEdemokraciaAdminAdminEdemokraciaAdminUserVotesButtonNavigate"
                            editMode={editMode}
                            navigateAction={() => buttonNavigateVotesAction(data)}
                          >
                            {t('edemokracia.admin.SimpleVote.user.User.View.personal.personal.votes', {
                              defaultValue: 'Votes',
                            })}
                            <MdiIcon path="arrow-right" />
                          </CollectionAssociationButton>
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid item xs={12} sm={12}>
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="map" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.SimpleVote.user.User.View.Areas.Areas.Label', {
                            defaultValue: 'Areas',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreas"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="center"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasResidency"
                            container
                            direction="row"
                            alignItems="flex-start"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12} md={4.0}>
                              <AggregationInput
                                name="residentCounty"
                                id="LinkedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasResidencyResidentCounty"
                                label={
                                  t(
                                    'edemokracia.admin.SimpleVote.user.User.View.Areas.Areas.Residency.residentCounty',
                                    { defaultValue: 'Resident county' },
                                  ) as string
                                }
                                labelList={[data.residentCounty?.representation?.toString() ?? '']}
                                value={data.residentCounty}
                                error={!!validation.get('residentCounty')}
                                helperText={validation.get('residentCounty')}
                                icon={<MdiIcon path="map" />}
                                disabled={false || !isFormUpdateable()}
                                editMode={editMode}
                                onView={async () => linkViewResidentCountyAction(data, data?.residentCounty!)}
                              />
                            </Grid>

                            <Grid item xs={12} sm={12} md={4.0}>
                              <AggregationInput
                                name="residentCity"
                                id="LinkedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasResidencyResidentCity"
                                label={
                                  t('edemokracia.admin.SimpleVote.user.User.View.Areas.Areas.Residency.residentCity', {
                                    defaultValue: 'Resident city',
                                  }) as string
                                }
                                labelList={[data.residentCity?.representation?.toString() ?? '']}
                                value={data.residentCity}
                                error={!!validation.get('residentCity')}
                                helperText={validation.get('residentCity')}
                                icon={<MdiIcon path="city" />}
                                disabled={false || !isFormUpdateable()}
                                editMode={editMode}
                                onView={async () => linkViewResidentCityAction(data, data?.residentCity!)}
                              />
                            </Grid>

                            <Grid item xs={12} sm={12} md={4.0}>
                              <AggregationInput
                                name="residentDistrict"
                                id="LinkedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasResidencyResidentDistrict"
                                label={
                                  t(
                                    'edemokracia.admin.SimpleVote.user.User.View.Areas.Areas.Residency.residentDistrict',
                                    { defaultValue: 'Resident district' },
                                  ) as string
                                }
                                labelList={[data.residentDistrict?.representation?.toString() ?? '']}
                                value={data.residentDistrict}
                                error={!!validation.get('residentDistrict')}
                                helperText={validation.get('residentDistrict')}
                                icon={<MdiIcon path="home-city" />}
                                disabled={false || !isFormUpdateable()}
                                editMode={editMode}
                                onView={async () => linkViewResidentDistrictAction(data, data?.residentDistrict!)}
                              />
                            </Grid>
                          </Grid>
                        </Grid>

                        <Grid container item xs={12} sm={12}>
                          <ModeledTabs
                            id="TabControlleredemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivity"
                            activeIndex={0}
                            childTabs={[
                              {
                                id: 'TabedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityTabActivityCounties',
                                name: 'tab_activity_counties',
                                label: 'Activity counties',
                                icon: 'map',
                              },
                              {
                                id: 'TabedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityCities',
                                name: 'activity_cities',
                                label: 'Activity cities',
                                icon: 'city',
                              },
                              {
                                id: 'TabedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityDistricts',
                                name: 'activity_districts',
                                label: 'Activity districts',
                                icon: 'home-city',
                              },
                            ]}
                          >
                            <Grid item xs={12} sm={12}>
                              <Grid
                                id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityTabActivityCountiesTabActivityCounties"
                                container
                                direction="row"
                                alignItems="flex-start"
                                justifyContent="flex-start"
                                spacing={2}
                              >
                                <Grid item xs={12} sm={12}>
                                  <Grid
                                    id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityTabActivityCountiesTabActivityCountiesActivityCountiesLabelWrapper"
                                    container
                                    direction="column"
                                    alignItems="stretch"
                                    justifyContent="flex-start"
                                    spacing={2}
                                  >
                                    <Grid item xs={12} sm={12}>
                                      <Grid
                                        id="TableedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityTabActivityCountiesTabActivityCountiesActivityCountiesLabelWrapperActivityCounties"
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
                                            ...columnsActionCalculator(
                                              'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityCounties',
                                              activityCountiesRowActions,
                                              { shownActions: 2 },
                                            ),
                                          ]}
                                          disableSelectionOnClick
                                          onRowClick={(params: GridRowParams<AdminCountyStored>) => {
                                            if (!editMode) {
                                              rowViewActivityCountiesAction(data, params.row);
                                            }
                                          }}
                                          sortModel={activityCountiesSortModel}
                                          onSortModelChange={(newModel: GridSortModel) => {
                                            setActivityCountiesSortModel(newModel);
                                          }}
                                          components={{
                                            Toolbar: () => (
                                              <GridToolbarContainer>
                                                <div>{/* Placeholder */}</div>
                                              </GridToolbarContainer>
                                            ),
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
                                id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityCitiesActivityCities"
                                container
                                direction="row"
                                alignItems="flex-start"
                                justifyContent="flex-start"
                                spacing={2}
                              >
                                <Grid item xs={12} sm={12}>
                                  <Grid
                                    id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityCitiesActivityCitiesActivityCitiesLabelWrapper"
                                    container
                                    direction="column"
                                    alignItems="stretch"
                                    justifyContent="flex-start"
                                    spacing={2}
                                  >
                                    <Grid item xs={12} sm={12}>
                                      <Grid
                                        id="TableedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityCitiesActivityCitiesActivityCitiesLabelWrapperActivityCities"
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
                                            ...columnsActionCalculator(
                                              'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityCities',
                                              activityCitiesRowActions,
                                              { shownActions: 2 },
                                            ),
                                          ]}
                                          disableSelectionOnClick
                                          onRowClick={(params: GridRowParams<AdminCityStored>) => {
                                            if (!editMode) {
                                              rowViewActivityCitiesAction(data, params.row);
                                            }
                                          }}
                                          sortModel={activityCitiesSortModel}
                                          onSortModelChange={(newModel: GridSortModel) => {
                                            setActivityCitiesSortModel(newModel);
                                          }}
                                          components={{
                                            Toolbar: () => (
                                              <GridToolbarContainer>
                                                <div>{/* Placeholder */}</div>
                                              </GridToolbarContainer>
                                            ),
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
                                id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityDistrictsActivityDistricts"
                                container
                                direction="row"
                                alignItems="flex-start"
                                justifyContent="flex-start"
                                spacing={2}
                              >
                                <Grid item xs={12} sm={12}>
                                  <Grid
                                    id="FlexedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityDistrictsActivityDistrictsActivityDistrictsLabelWrapper"
                                    container
                                    direction="column"
                                    alignItems="stretch"
                                    justifyContent="flex-start"
                                    spacing={2}
                                  >
                                    <Grid item xs={12} sm={12}>
                                      <Grid
                                        id="TableedemokraciaAdminAdminEdemokraciaAdminSimpleVoteUserViewDefaultUserViewAreasLabelWrapperAreasActivityActivityDistrictsActivityDistrictsActivityDistrictsLabelWrapperActivityDistricts"
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
                                            ...columnsActionCalculator(
                                              'RelationTypeedemokraciaAdminAdminEdemokraciaAdminUserActivityDistricts',
                                              activityDistrictsRowActions,
                                              { shownActions: 2 },
                                            ),
                                          ]}
                                          disableSelectionOnClick
                                          onRowClick={(params: GridRowParams<AdminDistrictStored>) => {
                                            if (!editMode) {
                                              rowViewActivityDistrictsAction(data, params.row);
                                            }
                                          }}
                                          sortModel={activityDistrictsSortModel}
                                          onSortModelChange={(newModel: GridSortModel) => {
                                            setActivityDistrictsSortModel(newModel);
                                          }}
                                          components={{
                                            Toolbar: () => (
                                              <GridToolbarContainer>
                                                <div>{/* Placeholder */}</div>
                                              </GridToolbarContainer>
                                            ),
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
