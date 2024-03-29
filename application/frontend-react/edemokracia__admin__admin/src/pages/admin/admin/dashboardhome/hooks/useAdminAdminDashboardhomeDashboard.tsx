//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access View

import { useTranslation } from 'react-i18next';
import { GridColDef, GridSortModel, GridRowParams, GridRenderCellParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../components';
import { FilterOption, FilterType } from '../../../../../components-api';
import {
  AdminDashboardQueryCustomizer,
  AdminIssueMaskBuilder,
  AdminIssueQueryCustomizer,
  AdminDebateMaskBuilder,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
  AdminDebateStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../config';
import { fileHandling } from '../../../../../utilities';

export const useAdminAdminDashboardhomeDashboard = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminDashboardQueryCustomizer = {
    _mask: '{welcome,issues{title,created,status,numberOfDebates},debates{title,issueTitle,closeAt,status}}',
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
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'closeAt',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.closeAt',
        { defaultValue: 'CloseAt' },
      ) as string,
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.mydebates.mydebates.debates.debates.status',
        { defaultValue: 'Status' },
      ) as string,
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
        { defaultValue: 'CloseAt' },
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
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t(
        'edemokracia.admin.Admin.dashboardhome.Dashboard.default.Dashboard.View.tabBar.myissues.myissues.issues.issues.status',
        { defaultValue: 'Status' },
      ) as string,
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
      width: 100,
      type: 'number',
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

  return {
    queryCustomizer,
    debatesColumns,
    debatesRangeFilterOptions,
    debatesInitialQueryCustomizer,
    issuesColumns,
    issuesRangeFilterOptions,
    issuesInitialQueryCustomizer,
  };
};
