//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/pages/index.tsx.hbs
// Page name: edemokracia::admin::Admin.issues#View
// Page owner name: edemokracia::admin::Admin
// Page DataElement name: issues
// Page DataElement owner name: edemokracia::admin::Admin

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
import { useSnackbar } from 'notistack';
import { ComponentProxy } from '@pandino/react-hooks';
import { useParams } from 'react-router-dom';
import {
  MdiIcon,
  ModeledTabs,
  PageHeader,
  DropdownButton,
  CustomBreadcrumb,
  useJudoNavigation,
} from '../../../../../components';
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
import { useConfirmationBeforeChange } from '../../../../../hooks';
import { baseTableConfig, toastConfig, dividerHeight } from '../../../../../config';
import { useL10N } from '../../../../../l10n/l10n-context';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../custom';
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
import { adminAdminServiceForIssuesImpl, adminIssueServiceImpl } from '../../../../../generated/data-axios';
import { JudoIdentifiable } from '@judo/data-api-common';
import { mainContainerPadding } from '../../../../../theme';
import { useAdminAdminIssuesView } from './hooks/useAdminAdminIssuesView';
import {
  useRowDeleteAttachmentsAction,
  useAdminIssueCreateCommentAction,
  useLinkViewCountyAction,
  useRowViewCommentsAction,
  usePageDeleteIssuesAction,
  usePageRefreshIssuesAction,
  useLinkViewOwnerAction,
  useLinkViewDistrictAction,
  usePageEditIssuesAction,
  useAdminCommentVoteUpAction,
  useTableCreateAttachmentsAction,
  useRowViewCategoriesAction,
  useRowEditAttachmentsAction,
  useLinkViewIssueTypeAction,
  useRowViewAttachmentsAction,
  useAdminIssueCreateDebateAction,
  useLinkViewCityAction,
  useAdminCommentVoteDownAction,
} from './actions';

/**
 * Name: edemokracia::admin::Admin.issues#View
 * Is Access: true
 * Is Dashboard: false
 * Type: View
 * Edit Mode Available: true
 **/
export default function AdminAdminIssuesView() {
  const { t } = useTranslation();
  const { navigate, back } = useJudoNavigation();
  const { signedIdentifier } = useParams();
  const rowDeleteAttachmentsAction = useRowDeleteAttachmentsAction();
  const AdminIssueCreateCommentAction = useAdminIssueCreateCommentAction();
  const linkViewCountyAction = useLinkViewCountyAction();
  const rowViewCommentsAction = useRowViewCommentsAction();
  const pageDeleteIssuesAction = usePageDeleteIssuesAction();
  const pageRefreshIssuesAction = usePageRefreshIssuesAction();
  const linkViewOwnerAction = useLinkViewOwnerAction();
  const linkViewDistrictAction = useLinkViewDistrictAction();
  const pageEditIssuesAction = usePageEditIssuesAction();
  const AdminCommentVoteUpAction = useAdminCommentVoteUpAction();
  const tableCreateAttachmentsAction = useTableCreateAttachmentsAction();
  const rowViewCategoriesAction = useRowViewCategoriesAction();
  const rowEditAttachmentsAction = useRowEditAttachmentsAction();
  const linkViewIssueTypeAction = useLinkViewIssueTypeAction();
  const rowViewAttachmentsAction = useRowViewAttachmentsAction();
  const AdminIssueCreateDebateAction = useAdminIssueCreateDebateAction();
  const linkViewCityAction = useLinkViewCityAction();
  const AdminCommentVoteDownAction = useAdminCommentVoteDownAction();

  const { openRangeDialog } = useRangeDialog();
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
  } = useAdminAdminIssuesView();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleUpdateError = useErrorHandler<AdminIssue>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Update)(component=AdminAdminIssuesView))`,
  );
  const handleDeleteError = useErrorHandler<AdminIssue>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Delete)(component=AdminAdminIssuesView))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<AdminIssueStored>({} as unknown as AdminIssueStored);
  const [payloadDiff, setPayloadDiff] = useState<Record<keyof AdminIssueStored, any>>(
    {} as unknown as Record<keyof AdminIssueStored, any>,
  );
  const storeDiff: (attributeName: keyof AdminIssueStored, value: any) => void = useCallback(
    (attributeName: keyof AdminIssueStored, value: any) => {
      const dateTypes: string[] = [];
      const dateTimeTypes: string[] = [];
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
  const [editMode, setEditMode] = useState<boolean>(false);
  const [validation, setValidation] = useState<Map<keyof AdminIssue, string>>(new Map());
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
      id: 'DeleteActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsRowDelete',
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
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteUpButtonCallOperation',
      label: t('edemokracia.admin.Admin.issues.View.edemokracia.admin.Comment.voteUp', { defaultValue: '' }) as string,
      icon: <MdiIcon path="thumb-up" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteUpAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
    {
      id: 'CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewEdemokraciaAdminAdminEdemokraciaAdminCommentVoteDownButtonCallOperation',
      label: t('edemokracia.admin.Admin.issues.View.edemokracia.admin.Comment.voteDown', {
        defaultValue: '',
      }) as string,
      icon: <MdiIcon path="thumb-down" />,
      action: async (row: AdminCommentStored) => AdminCommentVoteDownAction(row, () => fetchData()),
      disabled: (row: AdminCommentStored) => editMode,
    },
  ];
  const debatesRowActions: TableRowAction<AdminIssueDebateStored>[] = [];

  const title: string = t('edemokracia.admin.Admin.issues.View', { defaultValue: 'View / Edit Issue' });

  const isFormUpdateable = useCallback(() => {
    return true && typeof data?.__updateable === 'boolean' && data?.__updateable;
  }, [data]);

  const isFormDeleteable = useCallback(() => {
    return true && typeof data?.__deleteable === 'boolean' && data?.__deleteable;
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
        { __signedIdentifier: signedIdentifier } as AdminIssueStored,
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

  const saveData = async () => {
    setIsLoading(true);

    try {
      const res = await adminIssueServiceImpl.update(payloadDiff);

      if (res) {
        await fetchData();
        setEditMode(false);
      }
    } catch (error) {
      handleUpdateError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  const deleteData = async () => {
    setIsLoading(true);

    try {
      await adminIssueServiceImpl.delete(data as AdminIssueStored);

      back();
    } catch (error) {
      handleDeleteError(error, undefined, data);
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
        {editMode && isFormUpdateable() && (
          <Grid className="page-action" item>
            <Button
              id="page-action-edit-cancel"
              variant="outlined"
              onClick={() => {
                setEditMode(false);
                fetchData();
              }}
              disabled={isLoading}
            >
              <MdiIcon path="cancel" />
              {t('judo.pages.cancel', { defaultValue: 'Cancel' })}
            </Button>
          </Grid>
        )}
        {editMode && isFormUpdateable() && (
          <Grid className="page-action" item>
            <Button id="page-action-edit-save" onClick={() => saveData()} disabled={isLoading}>
              <MdiIcon path="content-save" />
              {t('judo.pages.save', { defaultValue: 'Save' })}
            </Button>
          </Grid>
        )}
        {!editMode && (
          <Grid className="page-action" item>
            <Button id="page-action-refresh" onClick={() => fetchData()} disabled={isLoading}>
              <MdiIcon path="refresh" />
              {t('judo.pages.refresh', { defaultValue: 'Refresh' })}
            </Button>
          </Grid>
        )}
        {!editMode && isFormDeleteable() && (
          <Grid className="page-action" item>
            <Button
              id="page-action-delete"
              onClick={() =>
                pageDeleteIssuesAction(data, () => {
                  back();
                })
              }
              disabled={isLoading || !data.__deleteable}
            >
              <MdiIcon path="delete" />
              {t('judo.pages.delete', { defaultValue: 'Delete' })}
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
              <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapper">
                <CardContent>
                  <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                    <Grid item xs={12} sm={12}>
                      <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                        <MdiIcon path="clipboard" />
                        <Typography
                          id="LabeledemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueLabel"
                          variant="h6"
                          component="h1"
                        >
                          {t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.Label', { defaultValue: 'Issue' })}
                        </Typography>
                      </Grid>
                    </Grid>

                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssue"
                        container
                        direction="row"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={8.0}>
                          <AggregationInput
                            name="issueType"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueIssueType"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.issueType', {
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
                            onUnset={async () => {
                              setEditMode(true);
                              storeDiff('issueType', null);
                            }}
                            onSet={async () => {
                              const res = await openRangeDialog<AdminIssueTypeStored, AdminIssueTypeQueryCustomizer>({
                                id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueIssueType',
                                columns: issueTypeColumns,
                                defaultSortField: ([{ field: 'title', sort: 'asc' }] as GridSortItem[])[0],
                                rangeCall: async (queryCustomizer) =>
                                  await adminIssueServiceImpl.getRangeForIssueType(
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
                          />
                        </Grid>

                        <Grid item xs={12} sm={12} md={4.0}>
                          <TextField
                            name="defaultVoteType"
                            id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueDefaultVoteType"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.defaultVoteType', {
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
                            id="TextInputedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueTitle"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.title', {
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
                            id="EnumerationComboedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueStatus"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.status', {
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
                                id: 'DateTimeInputedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueCreated',
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
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.created', {
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
                            id="TextAreaedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueDescription"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.description', {
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
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateDebateButtonCallOperation"
                            onClick={() => AdminIssueCreateDebateAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="wechat" />
                            {t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.createDebate', {
                              defaultValue: 'Create debate',
                            })}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <AggregationInput
                            name="owner"
                            id="LinkedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewIssueLabelWrapperIssueOwner"
                            label={
                              t('edemokracia.admin.Admin.issues.Issue.View.issue.issue.owner', {
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
                            onUnset={async () => {
                              setEditMode(true);
                              storeDiff('owner', null);
                            }}
                            onSet={async () => {
                              const res = await openRangeDialog<AdminUserStored, AdminUserQueryCustomizer>({
                                id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueOwner',
                                columns: ownerColumns,
                                defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                                rangeCall: async (queryCustomizer) =>
                                  await adminIssueServiceImpl.getRangeForOwner(
                                    data,
                                    processQueryCustomizer(queryCustomizer),
                                  ),
                                single: true,
                                alreadySelectedItems: data.owner?.__identifier as GridRowId,
                                filterOptions: ownerRangeFilterOptions,
                                initialQueryCustomizer: ownerInitialQueryCustomizer,
                              });

                              if (res === undefined) return;

                              setEditMode(true);
                              storeDiff('owner', res as AdminUserStored);
                            }}
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
                id="TabControlleredemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOther"
                activeIndex={0}
                childTabs={[
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherArea',
                    name: 'area',
                    label: 'Area',
                    icon: 'map',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAttachments',
                    name: 'attachments',
                    label: 'Attachments',
                    icon: 'paperclip',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCategories',
                    name: 'categories',
                    label: 'Categories',
                    icon: 'file-tree',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherDebates',
                    name: 'debates',
                    label: 'Debates',
                    icon: 'wechat',
                  },
                  {
                    id: 'TabedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherComments',
                    name: 'comments',
                    label: 'Comments',
                    icon: 'comment-text-multiple',
                  },
                ]}
              >
                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAreaArea"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12} md={4.0}>
                      <AggregationInput
                        name="county"
                        id="LinkedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAreaAreaCounty"
                        label={
                          t('edemokracia.admin.Admin.issues.Issue.View.other.area.area.county', {
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
                        onUnset={async () => {
                          setEditMode(true);
                          storeDiff('county', null);
                        }}
                        onSet={async () => {
                          const res = await openRangeDialog<AdminCountyStored, AdminCountyQueryCustomizer>({
                            id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCounty',
                            columns: countyColumns,
                            defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                            rangeCall: async (queryCustomizer) =>
                              await adminIssueServiceImpl.getRangeForCounty(
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
                      />
                    </Grid>

                    <Grid item xs={12} sm={12} md={4.0}>
                      <AggregationInput
                        name="city"
                        id="LinkedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAreaAreaCity"
                        label={
                          t('edemokracia.admin.Admin.issues.Issue.View.other.area.area.city', {
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
                        onUnset={async () => {
                          setEditMode(true);
                          storeDiff('city', null);
                        }}
                        onSet={async () => {
                          const res = await openRangeDialog<AdminCityStored, AdminCityQueryCustomizer>({
                            id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCity',
                            columns: cityColumns,
                            defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                            rangeCall: async (queryCustomizer) =>
                              await adminIssueServiceImpl.getRangeForCity(
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
                      />
                    </Grid>

                    <Grid item xs={12} sm={12} md={4.0}>
                      <AggregationInput
                        name="district"
                        id="LinkedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAreaAreaDistrict"
                        label={
                          t('edemokracia.admin.Admin.issues.Issue.View.other.area.area.district', {
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
                        onUnset={async () => {
                          setEditMode(true);
                          storeDiff('district', null);
                        }}
                        onSet={async () => {
                          const res = await openRangeDialog<AdminDistrictStored, AdminDistrictQueryCustomizer>({
                            id: 'RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueDistrict',
                            columns: districtColumns,
                            defaultSortField: ([{ field: 'representation', sort: 'asc' }] as GridSortItem[])[0],
                            rangeCall: async (queryCustomizer) =>
                              await adminIssueServiceImpl.getRangeForDistrict(
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
                      />
                    </Grid>
                  </Grid>
                </Grid>

                <Grid item xs={12} sm={12}>
                  <Grid
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAttachmentsAttachments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapperAttachments"
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
                                      id="CreateActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueAttachmentsTableCreate"
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCategoriesCategories"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapper"
                        container
                        direction="column"
                        alignItems="stretch"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapperCategories"
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
                                    <Button
                                      id="RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories-clear"
                                      variant="text"
                                      onClick={async () => {
                                        storeDiff('categories', []);

                                        if (!editMode) {
                                          setEditMode(true);
                                        }
                                      }}
                                      disabled={isLoading || false || !isFormUpdateable()}
                                    >
                                      <MdiIcon path="link_off" />
                                      {t('judo.pages.table.clear', { defaultValue: 'Clear' })}
                                    </Button>
                                    <Button
                                      id="RelationTypeedemokraciaAdminAdminEdemokraciaAdminIssueCategories-add"
                                      variant="text"
                                      onClick={async () => {
                                        const res = await categoriesRangeCall();

                                        if (res) {
                                          storeDiff('categories', [
                                            ...(data.categories || []),
                                            ...(res as AdminIssueCategoryStored[]),
                                          ]);

                                          if (!editMode) {
                                            setEditMode(true);
                                          }
                                        }
                                      }}
                                      disabled={isLoading || false || !isFormUpdateable()}
                                    >
                                      <MdiIcon path="attachment-plus" />
                                      {t('judo.pages.table.add', { defaultValue: 'Add' })}
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherDebatesDebates"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapper"
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
                              id="LabeledemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesLabel"
                              variant="h6"
                              component="h1"
                            >
                              {t(
                                'edemokracia.admin.Admin.issues.Issue.View.other.debates.debates.debates.debates.Label',
                                { defaultValue: 'Debates' },
                              )}
                            </Typography>
                          </Grid>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="TableedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebates"
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
                    id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCommentsComments"
                    container
                    direction="row"
                    alignItems="flex-start"
                    justifyContent="flex-start"
                    spacing={2}
                  >
                    <Grid item xs={12} sm={12}>
                      <Grid
                        id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCommentsCommentsActions"
                        container
                        direction="row"
                        alignItems="flex-start"
                        justifyContent="flex-start"
                        spacing={2}
                      >
                        <Grid item xs={12} sm={12} md={4.0}>
                          <Button
                            id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewEdemokraciaAdminAdminEdemokraciaAdminIssueCreateCommentButtonCallOperation"
                            onClick={() => AdminIssueCreateCommentAction(data, () => fetchData())}
                            disabled={isLoading || editMode}
                          >
                            <MdiIcon path="comment-text-multiple" />
                            {t(
                              'edemokracia.admin.Admin.issues.Issue.View.other.comments.comments.actions.createComment',
                              { defaultValue: 'Add comment' },
                            )}
                          </Button>
                        </Grid>

                        <Grid item xs={12} sm={12}>
                          <Grid
                            id="FlexedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapper"
                            container
                            direction="column"
                            alignItems="stretch"
                            justifyContent="flex-start"
                            spacing={2}
                          >
                            <Grid item xs={12} sm={12}>
                              <Grid
                                id="TableedemokraciaAdminAdminEdemokraciaAdminAdminIssuesViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperComments"
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
