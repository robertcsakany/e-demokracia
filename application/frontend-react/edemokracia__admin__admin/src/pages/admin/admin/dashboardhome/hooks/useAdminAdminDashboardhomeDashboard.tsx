//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access View

import { useTranslation } from 'react-i18next';
import {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { LoadingButton } from '@mui/lab';
import { MdiIcon } from '../../../../../components';
import { FilterOption, FilterType } from '../../../../../components-api';
import {
  AdminIssueMaskBuilder,
  AdminDebateMaskBuilder,
  AdminVoteEntryQueryCustomizer,
  AdminIssueStored,
  AdminVoteEntryStored,
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminVoteEntry,
  AdminDebate,
  AdminIssue,
  AdminDebateStored,
  AdminDashboardStored,
  AdminVoteEntryMaskBuilder,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../config';
import { fileHandling, serviceDateToUiDate, serviceTimeToUiTime } from '../../../../../utilities';
import { useL10N } from '../../../../../l10n/l10n-context';

export const useAdminAdminDashboardhomeDashboard = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminDashboardQueryCustomizer = {
    _mask:
      '{welcome,issues{title,created,status,numberOfDebates},debates{title,issueTitle,closeAt,status},voteEntries{created,issueTitle,debateTitle,voteTitle,voteStatus}}',
  };

  const debatesSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const debatesColumns: GridColDef<AdminDebateStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.title',
        { defaultValue: 'Title' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'issueTitle',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.issueTitle',
        { defaultValue: 'Issue' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'closeAt',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.closeAt',
        { defaultValue: 'Close At' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'dateTime',
      valueGetter: ({ value }) => value && serviceDateToUiDate(value),
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
      field: 'status',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.status',
        { defaultValue: 'Status' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
  ];

  const debatesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapperDebatesTitleFilter',
      attributeName: 'title',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapperDebatesIssueTitleFilter',
      attributeName: 'issueTitle',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.issueTitle.Filter',
        { defaultValue: 'Issue' },
      ) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapperDebatesCloseAtFilter',
      attributeName: 'closeAt',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.closeAt.Filter',
        { defaultValue: 'Close At' },
      ) as string,
      filterType: FilterType.dateTime,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMydebatesMydebatesDebatesLabelWrapperDebatesStatusFilter',
      attributeName: 'status',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.status.Filter',
        { defaultValue: 'Status' },
      ) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
  ];

  const debatesInitialQueryCustomizer: AdminDebateQueryCustomizer = {
    _mask: '{title,issueTitle,closeAt,status}',
    _orderBy: debatesSortModel.length
      ? [
          {
            attribute: debatesSortModel[0].field,
            descending: debatesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const issuesSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const issuesColumns: GridColDef<AdminIssueStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.title',
        { defaultValue: 'Title' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.created',
        { defaultValue: 'Created' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'dateTime',
      valueGetter: ({ value }) => value && serviceDateToUiDate(value),
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
      field: 'status',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.status',
        { defaultValue: 'Status' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
    {
      ...baseColumnConfig,
      field: 'numberOfDebates',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.numberOfDebates',
        { defaultValue: 'Debates' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
  ];

  const issuesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapperIssuesTitleFilter',
      attributeName: 'title',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapperIssuesCreatedFilter',
      attributeName: 'created',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.created.Filter',
        { defaultValue: 'Created' },
      ) as string,
      filterType: FilterType.dateTime,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapperIssuesStatusFilter',
      attributeName: 'status',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.status.Filter',
        { defaultValue: 'Status' },
      ) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyissuesMyissuesIssuesLabelWrapperIssuesNumberOfDebatesFilter',
      attributeName: 'numberOfDebates',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.numberOfDebates.Filter',
        { defaultValue: 'Debates' },
      ) as string,
      filterType: FilterType.numeric,
    },
  ];

  const issuesInitialQueryCustomizer: AdminIssueQueryCustomizer = {
    _mask: '{title,created,status,numberOfDebates}',
    _orderBy: issuesSortModel.length
      ? [
          {
            attribute: issuesSortModel[0].field,
            descending: issuesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const voteEntriesSortModel: GridSortModel = [{ field: 'created', sort: 'asc' }];

  const voteEntriesColumns: GridColDef<AdminVoteEntryStored>[] = [
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.created',
        { defaultValue: 'Created' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'dateTime',
      valueGetter: ({ value }) => value && serviceDateToUiDate(value),
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
      field: 'issueTitle',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.issueTitle',
        { defaultValue: 'Issue Title' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'debateTitle',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.debateTitle',
        { defaultValue: 'Debate Title' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'voteTitle',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.voteTitle',
        { defaultValue: 'Vote Title' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'voteStatus',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.voteStatus',
        { defaultValue: 'Vote Status' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
  ];

  const voteEntriesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapperVoteEntriesCreatedFilter',
      attributeName: 'created',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.created.Filter',
        { defaultValue: 'Created' },
      ) as string,
      filterType: FilterType.dateTime,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapperVoteEntriesIssueTitleFilter',
      attributeName: 'issueTitle',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.issueTitle.Filter',
        { defaultValue: 'Issue Title' },
      ) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapperVoteEntriesDebateTitleFilter',
      attributeName: 'debateTitle',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.debateTitle.Filter',
        { defaultValue: 'Debate Title' },
      ) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapperVoteEntriesVoteTitleFilter',
      attributeName: 'voteTitle',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.voteTitle.Filter',
        { defaultValue: 'Vote Title' },
      ) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDashboardhomeDashboardDefaultDashboardViewTabBarMyvotesMyvotesVoteEntriesLabelWrapperVoteEntriesVoteStatusFilter',
      attributeName: 'voteStatus',
      label: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myvotes.myvotes.voteEntries.voteEntries.voteStatus.Filter',
        { defaultValue: 'Vote Status' },
      ) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
  ];

  const voteEntriesInitialQueryCustomizer: AdminVoteEntryQueryCustomizer = {
    _mask: '{created,issueTitle,debateTitle,voteTitle,voteStatus}',
    _orderBy: voteEntriesSortModel.length
      ? [
          {
            attribute: voteEntriesSortModel[0].field,
            descending: voteEntriesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
    queryCustomizer,
    debatesColumns,
    debatesRangeFilterOptions,
    debatesInitialQueryCustomizer,
    issuesColumns,
    issuesRangeFilterOptions,
    issuesInitialQueryCustomizer,
    voteEntriesColumns,
    voteEntriesRangeFilterOptions,
    voteEntriesInitialQueryCustomizer,
  };
};
