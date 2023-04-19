//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Relation View

import { useTranslation } from 'react-i18next';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminIssueTypeMaskBuilder,
  AdminIssueDebateMaskBuilder,
  AdminIssueDebate,
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
  AdminDebateStored,
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
  AdminDebate,
  AdminCountyMaskBuilder,
  AdminIssue,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminDistrictMaskBuilder,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling, serviceDateToUiDate } from '../../../../../../utilities';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminDebateIssueView = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminIssueQueryCustomizer = {
    _mask:
      '{title,status,created,description,issueType{title,description},owner{representation},county{representation},city{representation},district{representation},attachments{link,file,type},categories{title,description},debates{status,title,closeAt,description},comments{comment,created,createdByName,upVotes,downVotes}}',
  };

  const attachmentsSortModel: GridSortModel = [{ field: 'link', sort: 'asc' }];

  const attachmentsColumns: GridColDef<AdminIssueAttachmentStored>[] = [
    {
      ...baseColumnConfig,
      field: 'link',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.attachments.attachments.attachments.attachments.link',
        { defaultValue: 'Link' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'file',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.attachments.attachments.attachments.attachments.file',
        { defaultValue: 'File' },
      ) as string,
      width: 230,
      type: 'string',
      sortable: false,
      align: 'center',
      renderCell: (params: GridRenderCellParams<any, AdminIssueAttachmentStored>) => {
        return params.row.file ? (
          <Button
            id="ColumnedemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapperAttachmentsFile-download"
            size="small"
            variant="text"
            onClick={(event: any) => {
              event.preventDefault();
              event.stopPropagation();
              downloadFile(params.row, 'file');
            }}
          >
            <MdiIcon path="file-document-outline" mimeType={{ type: 'image', subType: '*' }} />
            {extractFileNameFromToken(params.row.file)}
          </Button>
        ) : (
          <MdiIcon path="minus" />
        );
      },
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
    {
      ...baseColumnConfig,
      field: 'type',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.attachments.attachments.attachments.attachments.type',
        { defaultValue: 'Type' },
      ) as string,
      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
  ];

  const attachmentsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapperAttachmentsLinkFilter',
      attributeName: 'link',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.attachments.attachments.attachments.attachments.link.Filter',
        { defaultValue: 'Link' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAttachmentsAttachmentsAttachmentsLabelWrapperAttachmentsTypeFilter',
      attributeName: 'type',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.attachments.attachments.attachments.attachments.type.Filter',
        { defaultValue: 'Type' },
      ) as string,
      filterType: FilterType.enumeration,
      enumValues: ['LINK', 'IMAGE', 'VIDEO', 'MAP'],
    },
  ];

  const attachmentsInitialQueryCustomizer: AdminIssueAttachmentQueryCustomizer = {
    _mask: '{link,file,type}',
    _orderBy: attachmentsSortModel.length
      ? [
          {
            attribute: attachmentsSortModel[0].field,
            descending: attachmentsSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const categoriesSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const categoriesColumns: GridColDef<AdminIssueCategoryStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.categories.categories.categories.categories.title',
        { defaultValue: 'Title' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.categories.categories.categories.categories.description',
        { defaultValue: 'Description' },
      ) as string,
      width: 230,
      type: 'string',
    },
  ];

  const categoriesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapperCategoriesTitleFilter',
      attributeName: 'title',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.categories.categories.categories.categories.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCategoriesCategoriesCategoriesLabelWrapperCategoriesDescriptionFilter',
      attributeName: 'description',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.categories.categories.categories.categories.description.Filter',
        { defaultValue: 'Description' },
      ) as string,
      filterType: FilterType.string,
    },
  ];

  const categoriesInitialQueryCustomizer: AdminIssueCategoryQueryCustomizer = {
    _mask: '{title,description}',
    _orderBy: categoriesSortModel.length
      ? [
          {
            attribute: categoriesSortModel[0].field,
            descending: categoriesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const commentsSortModel: GridSortModel = [{ field: 'comment', sort: 'asc' }];

  const commentsColumns: GridColDef<AdminCommentStored>[] = [
    {
      ...baseColumnConfig,
      field: 'comment',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.comment',
        { defaultValue: 'Comment' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.created',
        { defaultValue: 'Created' },
      ) as string,
      width: 170,
      type: 'dateTime',
      valueGetter: ({ value }) => value && new Date(serviceDateToUiDate(value)),
      valueFormatter: ({ value }: GridValueFormatterParams<Date>) => {
        return (
          value &&
          new Intl.DateTimeFormat(l10nLocale, {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false,
          }).format(value)
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'createdByName',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.createdByName',
        { defaultValue: 'CreatedByName' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.upVotes',
        { defaultValue: 'up' },
      ) as string,
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.downVotes',
        { defaultValue: 'down' },
      ) as string,
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
  ];

  const commentsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperCommentsCommentFilter',
      attributeName: 'comment',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.comment.Filter',
        { defaultValue: 'Comment' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperCommentsCreatedFilter',
      attributeName: 'created',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.created.Filter',
        { defaultValue: 'Created' },
      ) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperCommentsCreatedByNameFilter',
      attributeName: 'createdByName',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.createdByName.Filter',
        { defaultValue: 'CreatedByName' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperCommentsUpVotesFilter',
      attributeName: 'upVotes',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.upVotes.Filter',
        { defaultValue: 'up' },
      ) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherCommentsCommentsActionsCommentsLabelWrapperCommentsDownVotesFilter',
      attributeName: 'downVotes',
      label: t(
        'edemokracia.admin.Debate.issue.Issue.View.other.comments.comments.actions.comments.comments.downVotes.Filter',
        { defaultValue: 'down' },
      ) as string,
      filterType: FilterType.numeric,
    },
  ];

  const commentsInitialQueryCustomizer: AdminCommentQueryCustomizer = {
    _mask: '{comment,created,createdByName,upVotes,downVotes}',
    _orderBy: commentsSortModel.length
      ? [
          {
            attribute: commentsSortModel[0].field,
            descending: commentsSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const debatesSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const debatesColumns: GridColDef<AdminIssueDebateStored>[] = [
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.status', {
        defaultValue: 'Status',
      }) as string,
      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'closeAt',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.closeAt', {
        defaultValue: 'CloseAt',
      }) as string,
      width: 170,
      type: 'dateTime',
      valueGetter: ({ value }) => value && new Date(serviceDateToUiDate(value)),
      valueFormatter: ({ value }: GridValueFormatterParams<Date>) => {
        return (
          value &&
          new Intl.DateTimeFormat(l10nLocale, {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false,
          }).format(value)
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.description', {
        defaultValue: 'Description',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const debatesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesStatusFilter',
      attributeName: 'status',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.status.Filter', {
        defaultValue: 'Status',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesCloseAtFilter',
      attributeName: 'closeAt',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.closeAt.Filter', {
        defaultValue: 'CloseAt',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherDebatesDebatesDebatesLabelWrapperDebatesDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.debates.debates.debates.debates.description.Filter', {
        defaultValue: 'Description',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const debatesInitialQueryCustomizer: AdminIssueDebateQueryCustomizer = {
    _mask: '{status,title,closeAt,description}',
    _orderBy: debatesSortModel.length
      ? [
          {
            attribute: debatesSortModel[0].field,
            descending: debatesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const issueTypeSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const issueTypeColumns: GridColDef<AdminIssueTypeStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.issueType.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.issueType.description', {
        defaultValue: 'Description',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const issueTypeRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueIssueTypeTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.issueType.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueIssueTypeDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.issueType.description.Filter', {
        defaultValue: 'Description',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const issueTypeInitialQueryCustomizer: AdminIssueTypeQueryCustomizer = {
    _mask: '{title,description}',
    _orderBy: issueTypeSortModel.length
      ? [
          {
            attribute: issueTypeSortModel[0].field,
            descending: issueTypeSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const ownerSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const ownerColumns: GridColDef<AdminUserStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.owner.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const ownerRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewIssueLabelWrapperIssueOwnerRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Debate.issue.Issue.View.issue.issue.owner.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const ownerInitialQueryCustomizer: AdminUserQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: ownerSortModel.length
      ? [
          {
            attribute: ownerSortModel[0].field,
            descending: ownerSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const citySortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const cityColumns: GridColDef<AdminCityStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.area.area.city.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const cityRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAreaAreaCityRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.area.area.city.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const cityInitialQueryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: citySortModel.length
      ? [
          {
            attribute: citySortModel[0].field,
            descending: citySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const countySortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const countyColumns: GridColDef<AdminCountyStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.area.area.county.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const countyRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAreaAreaCountyRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.area.area.county.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const countyInitialQueryCustomizer: AdminCountyQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: countySortModel.length
      ? [
          {
            attribute: countySortModel[0].field,
            descending: countySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const districtSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const districtColumns: GridColDef<AdminDistrictStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Debate.issue.Issue.View.other.area.area.district.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const districtRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminDebateIssueViewDefaultIssueViewOtherAreaAreaDistrictRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Debate.issue.Issue.View.other.area.area.district.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const districtInitialQueryCustomizer: AdminDistrictQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: districtSortModel.length
      ? [
          {
            attribute: districtSortModel[0].field,
            descending: districtSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
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
  };
};
