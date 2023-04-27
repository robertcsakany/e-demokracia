//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Dashboard.createIssue#Output
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: output
// Page DataElement owner name: createIssue

import { useEffect, useState, useCallback, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Box,
  Container,
  Grid,
  Button,
  Card,
  CardContent,
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
  GridRowSelectionModel,
  GridSortItem,
  GridSortModel,
  GridToolbarContainer,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { DateTimePicker, DateTimeValidationError } from '@mui/x-date-pickers';
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
import { useL10N } from '../../../../../l10n/l10n-context';
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
  uiTimeToServiceTime,
  serviceTimeToUiTime,
  booleanToStringSelect,
  stringToBooleanSelect,
} from '../../../../../utilities';
import { baseTableConfig, toastConfig } from '../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import {
  AdminIssueTypeMaskBuilder,
  AdminIssueDebateMaskBuilder,
  AdminIssueDebate,
  EdemokraciaVoteType,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  AdminDistrictStored,
  AdminCommentQueryCustomizer,
  AdminCounty,
  AdminCity,
  AdminUserMaskBuilder,
  AdminDistrictQueryCustomizer,
  AdminIssueDebateQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminIssueCategoryStored,
  AdminCommentMaskBuilder,
  AdminIssueAttachmentMaskBuilder,
  AdminIssueCategory,
  AdminComment,
  AdminUser,
  AdminCityStored,
  AdminCountyStored,
  EdemokraciaIssueStatus,
  AdminIssueTypeStored,
  AdminIssueCategoryMaskBuilder,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminIssueAttachmentStored,
  AdminCountyQueryCustomizer,
  AdminIssueDebateStored,
  AdminIssueAttachmentQueryCustomizer,
  AdminIssueAttachment,
  AdminCountyMaskBuilder,
  AdminIssue,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminDistrictMaskBuilder,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
} from '../../../../../generated/data-api';
import { adminIssueServiceImpl } from '../../../../../generated/data-axios';
import { useAdminDashboardCreateissueOutput } from './hooks/useAdminDashboardCreateissueOutput';
import {
  useTableCreateAttachmentsAction,
  useLinkViewDistrictAction,
  useLinkViewCountyAction,
  useAdminIssueCreateDebateAction,
  useRowDeleteAttachmentsAction,
  useLinkViewIssueTypeAction,
  useAdminCommentVoteDownAction,
  useRowEditAttachmentsAction,
  useAdminIssueCreateCommentAction,
  useRowViewCommentsAction,
  useLinkViewCityAction,
  useRowViewCategoriesAction,
  useRowViewAttachmentsAction,
  usePageRefreshOutputAction,
  useLinkViewOwnerAction,
  useAdminCommentVoteUpAction,
} from './actions';

/**
 * Name: edemokracia::admin::Dashboard.createIssue#Output
 * Is Operation Output: true
 * Type: OperationOutput
 **/
export default function AdminDashboardCreateissueOutput() {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { navigate, back } = useJudoNavigation();
  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminIssue, string>>(new Map());
  const { signedIdentifier } = useParams();
  const [data, setData] = useState<AdminIssueStored>({} as unknown as AdminIssueStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueStored, any>>(
    {} as unknown as Record<keyof AdminIssueStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueStored, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueStored, value: any) => {
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
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const {
    queryCustomizer,
    attachmentsColumns,
    attachmentsRangeFilterOptions,
    attachmentsInitialQueryCustomizer,
    categoriesColumns,
    categoriesRangeFilterOptions,
    categoriesInitialQueryCustomizer,
    commentsColumns,
    commentsRangeFilterOptions,
    commentsInitialQueryCustomizer,
    debatesColumns,
    debatesRangeFilterOptions,
    debatesInitialQueryCustomizer,
    issueTypeColumns,
    issueTypeRangeFilterOptions,
    issueTypeInitialQueryCustomizer,
    ownerColumns,
    ownerRangeFilterOptions,
    ownerInitialQueryCustomizer,
    cityColumns,
    cityRangeFilterOptions,
    cityInitialQueryCustomizer,
    countyColumns,
    countyRangeFilterOptions,
    countyInitialQueryCustomizer,
    districtColumns,
    districtRangeFilterOptions,
    districtInitialQueryCustomizer,
  } = useAdminDashboardCreateissueOutput();
  const tableCreateAttachmentsAction = useTableCreateAttachmentsAction();
  const linkViewDistrictAction = useLinkViewDistrictAction();
  const linkViewCountyAction = useLinkViewCountyAction();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const rowDeleteAttachmentsAction = useRowDeleteAttachmentsAction();
  const linkViewIssueTypeAction = useLinkViewIssueTypeAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();
  const rowEditAttachmentsAction = useRowEditAttachmentsAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const linkViewCityAction = useLinkViewCityAction();
  const rowViewCategoriesAction = useRowViewCategoriesAction();
  const rowViewAttachmentsAction = useRowViewAttachmentsAction();
  const pageRefreshOutputAction = usePageRefreshOutputAction();
  const linkViewOwnerAction = useLinkViewOwnerAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();

  const [attachmentsSortModel, setAttachmentsSortModel] = useState<GridSortModel>([{ field: 'link', sort: 'asc' }]);

  const [categoriesSortModel, setCategoriesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);

  const categoriesRangeCall = async () =>
    openRangeDialog<AdminIssueCategoryStored, AdminIssueCategoryQueryCustomizer>({
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories',
      columns: categoriesColumns,
      defaultSortField: categoriesSortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminIssueServiceImpl.getRangeForCategories(undefined, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: categoriesSelectionModel,
      filterOptions: categoriesRangeFilterOptions,
      initialQueryCustomizer: categoriesInitialQueryCustomizer,
    });

  const [categoriesSelectionModel, setCategoriesSelectionModel] = useState<GridRowSelectionModel>([]);

  const [commentsSortModel, setCommentsSortModel] = useState<GridSortModel>([{ field: 'comment', sort: 'asc' }]);

  const [debatesSortModel, setDebatesSortModel] = useState<GridSortModel>([{ field: 'title', sort: 'asc' }]);
  const attachmentsRowActions: TableRowAction<AdminIssueAttachmentStored>[] = [
    {
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsRowDelete',
      label: t('judo.pages.table.delete', { defaultValue: 'Delete' }) as string,
      icon: <MdiIcon path="delete_forever" />,
      action: async (row: AdminIssueAttachmentStored) => rowDeleteAttachmentsAction(data, row, () => fetchData()),
      disabled: (row: AdminIssueAttachmentStored) => editMode || !row.__deleteable,
    },
  ];
  const categoriesRowActions: TableRowAction<AdminIssueCategoryStored>[] = [
    {
      id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories-remove',
      label: t('judo.pages.table.remove', { defaultValue: 'Remove' }) as string,
      icon: <MdiIcon path="link_off" />,
      action: async (row: AdminIssueCategoryStored) => {
        setEditMode(true);
        storeDiff('categories', [
          ...(data.categories || []).filter(
            (e: AdminIssueCategoryStored) => e.__signedIdentifier !== row.__signedIdentifier,
          ),
        ]);
      },
    },
  ];
  const commentsRowActions: TableRowAction<AdminCommentStored>[] = [
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Dashboard.createIssue.Output.edemokracia.admin.Comment.voteUp', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Dashboard.createIssue.Output.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
  ];
  const debatesRowActions: TableRowAction<AdminIssueDebateStored>[] = [];

  const title: string = t('edemokracia.admin.Dashboard.createIssue.Output', { defaultValue: 'View / Edit Issue' });

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
      const res = await adminIssueServiceImpl.refresh(
        { __signedIdentifier: signedIdentifier } as JudoIdentifiable<AdminIssue>,
        processQueryCustomizer(queryCustomizer),
      );

      setData(res);
      setPayloadDiff({
        __identifier: res.__identifier,
        __signedIdentifier: res.__signedIdentifier,
        __version: res.__version,
        __entityType: res.__entityType,
      } as Record<keyof AdminIssueStored, any>);
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
    setValidation(new Map<keyof AdminIssue, string>());
  }, [editMode]);

  return (
    <>
      <PageHeader title={title}>
        {!editMode && (
          <Grid className="page-action" item>
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="clipboard" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.Label', {
                            defaultValue: 'Issue',
                          })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssue"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={8.0}>
                          <AggregationInput
                            name="issueType"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueIssueType"
                            label={
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.issueType', {
                                defaultValue: 'Issue Type',
                              }) as string
                            }
                            labelList={[
                              data.issueType?.title?.toString() ?? '',
                              data.issueType?.description?.toString() ?? '',
                            ]}
                            value={data.issueType}
                            error={!!validation.get('issueType')}
                            helperText={validation.get('issueType')}
                            icon={<MdiIcon path="folder-open" />}
                            disabled={false || !isFormUpdateable()}
                            editMode={editMode}
                            onView={async () => linkViewIssueTypeAction(data, data?.issueType!)}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            name="defaultVoteType"
                            id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueDefaultVoteType"
                            label={
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.defaultVoteType', {
                                defaultValue: 'Default Vote Type',
                              }) as string
                            }
                            value={data.defaultVoteType || ''}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false || !isFormUpdateable()}
                            error={!!validation.get('defaultVoteType')}
                            helperText={validation.get('defaultVoteType')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('defaultVoteType', event.target.value as EdemokraciaVoteType);
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
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeYESNO"
                              value={'YES_NO'}
                            >
                              {t('enumerations.EdemokraciaVoteType.YES_NO', { defaultValue: 'YES_NO' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeYESNOABSTAIN"
                              value={'YES_NO_ABSTAIN'}
                            >
                              {t('enumerations.EdemokraciaVoteType.YES_NO_ABSTAIN', { defaultValue: 'YES_NO_ABSTAIN' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeSELECTANSWER"
                              value={'SELECT_ANSWER'}
                            >
                              {t('enumerations.EdemokraciaVoteType.SELECT_ANSWER', { defaultValue: 'SELECT_ANSWER' })}
                            </MenuItem>
                            <MenuItem id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeRATE" value={'RATE'}>
                              {t('enumerations.EdemokraciaVoteType.RATE', { defaultValue: 'RATE' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaVoteTypeNOVOTE"
                              value={'NO_VOTE'}
                            >
                              {t('enumerations.EdemokraciaVoteType.NO_VOTE', { defaultValue: 'NO_VOTE' })}
                            </MenuItem>
                          </TextField>
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            required
                            name="title"
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueTitle"
                            label={
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.title', {
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
                          <TextField
                            required
                            name="status"
                            id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueStatus"
                            label={
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.status', {
                                defaultValue: 'Status',
                              }) as string
                            }
                            value={data.status || ''}
                            className={!editMode ? 'JUDO-viewMode' : undefined}
                            disabled={false || !isFormUpdateable()}
                            error={!!validation.get('status')}
                            helperText={validation.get('status')}
                            onChange={(event) => {
                              setEditMode(true);
                              storeDiff('status', event.target.value as EdemokraciaIssueStatus);
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
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusCREATED"
                              value={'CREATED'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.CREATED', { defaultValue: 'CREATED' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusPENDING"
                              value={'PENDING'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.PENDING', { defaultValue: 'PENDING' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusACTIVE"
                              value={'ACTIVE'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.ACTIVE', { defaultValue: 'ACTIVE' })}
                            </MenuItem>
                            <MenuItem
                              id="EnumerationMemberedemokraciaAdminAdminEdemokraciaIssueStatusCLOSED"
                              value={'CLOSED'}
                            >
                              {t('enumerations.EdemokraciaIssueStatus.CLOSED', { defaultValue: 'CLOSED' })}
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
                                id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueCreated',
                                helperText: validation.get('created'),
                                error: !!validation.get('created'),
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
                                const copy = new Map<keyof AdminIssue, string>(prevValidation);
                                copy.set(
                                  'created',
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
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.created', {
                                defaultValue: 'Created',
                              }) as string
                            }
                            value={serviceDateToUiDate(data.created ?? null)}
                            disabled={true || !isFormUpdateable()}
                            onChange={(newValue: Date) => {
                              setEditMode(true);
                              storeDiff('created', newValue);
                            }}
                          />
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <TextField
                            required
                            name="description"
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueDescription"
                            label={
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.description', {
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
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation"
                            onClick={() => AdminIssueCreateDebateAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="wechat" />
                            {t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.createDebate', {
                              defaultValue: 'Create debate',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <AggregationInput
                            name="owner"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewIssueLabelWrapperIssueOwner"
                            label={
                              t('edemokracia.admin.Dashboard.createIssue.Issue.View.issue.issue.owner', {
                                defaultValue: 'Owner',
                              }) as string
                            }
                            labelList={[data.owner?.representation?.toString() ?? '']}
                            value={data.owner}
                            error={!!validation.get('owner')}
                            helperText={validation.get('owner')}
                            icon={<MdiIcon path="account" />}
                            disabled={false || !isFormUpdateable()}
                            editMode={editMode}
                            onView={async () => linkViewOwnerAction(data, data?.owner!)}
                          />
                        </Grid>
                      </Grid>
                    </Grid>
                  </Grid>
                </CardContent>
              </Card>
            </Grid>

            <Grid container item xs={12} sm={12}>
              <ModeledTabs
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOther"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherArea',
                    name: 'area',
                    label: 'Area',
                    icon: 'map',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAttachments',
                    name: 'attachments',
                    label: 'Attachments',
                    icon: 'paperclip',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCategories',
                    name: 'categories',
                    label: 'Categories',
                    icon: 'file-tree',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherDebates',
                    name: 'debates',
                    label: 'Debates',
                    icon: 'wechat',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherComments',
                    name: 'comments',
                    label: 'Comments',
                    icon: 'comment-text-multiple',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAreaArea"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12} md={4.0}>
                      <AggregationInput
                        name="county"
                        id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAreaAreaCounty"
                        label={
                          t('edemokracia.admin.Dashboard.createIssue.Issue.View.other.area.area.county', {
                            defaultValue: 'County',
                          }) as string
                        }
                        labelList={[data.county?.representation?.toString() ?? '']}
                        value={data.county}
                        error={!!validation.get('county')}
                        helperText={validation.get('county')}
                        icon={<MdiIcon path="map" />}
                        disabled={false || !isFormUpdateable()}
                        editMode={editMode}
                        onView={async () => linkViewCountyAction(data, data?.county!)}
                      />
                    </Grid>

                    <Grid item xs={12} sm={12} md={4.0}>
                      <AggregationInput
                        name="city"
                        id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAreaAreaCity"
                        label={
                          t('edemokracia.admin.Dashboard.createIssue.Issue.View.other.area.area.city', {
                            defaultValue: 'City',
                          }) as string
                        }
                        labelList={[data.city?.representation?.toString() ?? '']}
                        value={data.city}
                        error={!!validation.get('city')}
                        helperText={validation.get('city')}
                        icon={<MdiIcon path="city" />}
                        disabled={false || !isFormUpdateable()}
                        editMode={editMode}
                        onView={async () => linkViewCityAction(data, data?.city!)}
                      />
                    </Grid>

                    <Grid item xs={12} sm={12} md={4.0}>
                      <AggregationInput
                        name="district"
                        id="LinkedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAreaAreaDistrict"
                        label={
                          t('edemokracia.admin.Dashboard.createIssue.Issue.View.other.area.area.district', {
                            defaultValue: 'District',
                          }) as string
                        }
                        labelList={[data.district?.representation?.toString() ?? '']}
                        value={data.district}
                        error={!!validation.get('district')}
                        helperText={validation.get('district')}
                        icon={<MdiIcon path="home-city" />}
                        disabled={false || !isFormUpdateable()}
                        editMode={editMode}
                        onView={async () => linkViewDistrictAction(data, data?.district!)}
                      />
                    </Grid>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAttachmentsAttachments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapperAttachments"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              sx={{
                                // overflow: 'hidden',
                                display: 'grid',
                              }}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.attachments ?? []}
                              getRowClassName={() => 'data-grid-row'}
                              getCellClassName={() => 'data-grid-cell'}
                              columns={[
                                ...attachmentsColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueAttachments',
                                  attachmentsRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableRowSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueAttachmentStored>) => {
                                if (!editMode) {
                                  rowViewAttachmentsAction(data, params.row);
                                }
                              }}
                              sortModel={attachmentsSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setAttachmentsSortModel(newModel);
                              }}
                              components={{
                                Toolbar: () => (
                                  <GridToolbarContainer>
                                    <Button
                                      id="CreateActionedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate"
                                      variant="text"
                                      onClick={() => tableCreateAttachmentsAction(data, () => fetchData())}
                                      disabled={false || !isFormUpdateable()}
                                    >
                                      <MdiIcon path="file_document_plus" />
                                      {t('judo.pages.table.create', { defaultValue: 'Create' })}
                                    </Button>
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCategoriesCategories"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapperCategories"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              sx={{
                                // overflow: 'hidden',
                                display: 'grid',
                              }}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.categories ?? []}
                              getRowClassName={() => 'data-grid-row'}
                              getCellClassName={() => 'data-grid-cell'}
                              columns={[
                                ...categoriesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories',
                                  categoriesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableRowSelectionOnClick
                              onRowClick={(params: GridRowParams<AdminIssueCategoryStored>) => {
                                if (!editMode) {
                                  rowViewCategoriesAction(data, params.row);
                                }
                              }}
                              sortModel={categoriesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setCategoriesSortModel(newModel);
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherDebatesDebates"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                            <MdiIcon path="wechat" />
                            <Typography
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t(
                                'edemokracia.admin.Dashboard.createIssue.Issue.View.other.debates.debates.debates.debates.Label',
                                { defaultValue: 'Debates' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebates"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                          >
                            <DataGrid
                              {...baseTableConfig}
                              sx={{
                                // overflow: 'hidden',
                                display: 'grid',
                              }}
                              getRowId={(row: { __identifier: string }) => row.__identifier}
                              loading={isLoading}
                              rows={data?.debates ?? []}
                              getRowClassName={() => 'data-grid-row'}
                              getCellClassName={() => 'data-grid-cell'}
                              columns={[
                                ...debatesColumns,
                                ...columnsActionCalculator(
                                  'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueDebates',
                                  debatesRowActions,
                                  { shownActions: 2 },
                                ),
                              ]}
                              disableRowSelectionOnClick
                              sortModel={debatesSortModel}
                              onSortModelChange={(newModel: GridSortModel) => {
                                setDebatesSortModel(newModel);
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCommentsComments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCommentsCommentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputEdemokraciaAdminAdminEdemokraciaAdminIssueCreateCommentButtonCallOperation"
                            onClick={() => AdminIssueCreateCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t(
                              'edemokracia.admin.Dashboard.createIssue.Issue.View.other.comments.comments.actions.createComment',
                              { defaultValue: 'Add comment' },
                            )}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="FlexedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapper"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12}>
                              <Grid
                                id="TableedemokraciaAdminAdminEdemokraciaAdminDashboardCreateIssueOutputDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperComments"
                                container
                                direction="column"
                                alignItems="stretch"
                                justifyContent="flex-start"
                              >
                                <DataGrid
                                  {...baseTableConfig}
                                  sx={{
                                    // overflow: 'hidden',
                                    display: 'grid',
                                  }}
                                  getRowId={(row: { __identifier: string }) => row.__identifier}
                                  loading={isLoading}
                                  rows={data?.comments ?? []}
                                  getRowClassName={() => 'data-grid-row'}
                                  getCellClassName={() => 'data-grid-cell'}
                                  columns={[
                                    ...commentsColumns,
                                    ...columnsActionCalculator(
                                      'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueComments',
                                      commentsRowActions,
                                      { shownActions: 2 },
                                    ),
                                  ]}
                                  disableRowSelectionOnClick
                                  onRowClick={(params: GridRowParams<AdminCommentStored>) => {
                                    if (!editMode) {
                                      rowViewCommentsAction(data, params.row);
                                    }
                                  }}
                                  sortModel={commentsSortModel}
                                  onSortModelChange={(newModel: GridSortModel) => {
                                    setCommentsSortModel(newModel);
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
                  </Grid>
                </Grid>
              </ModeledTabs>
            </Grid>
          </Grid>
        </Box>
      </Container>
    </>
  );
}
