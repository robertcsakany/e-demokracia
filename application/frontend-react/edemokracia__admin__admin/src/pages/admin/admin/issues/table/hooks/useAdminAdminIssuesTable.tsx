//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access Table

import type { GridColDef, GridRenderCellParams, GridRowParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { useTranslation } from 'react-i18next';
import { FilterType } from '../../../../../../components-api';
import type { FilterOption } from '../../../../../../components-api';
import { MdiIcon, useJudoNavigation } from '../../../../../../components';
import { fileHandling } from '../../../../../../utilities';
import { AdminIssueStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';

export const useAdminAdminIssuesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const columns: GridColDef<AdminIssueStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Admin.issues.issues.Issue.Table.title', { defaultValue: 'Title' }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t('edemokracia.admin.Admin.issues.issues.Issue.Table.status', { defaultValue: 'Status' }) as string,
      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Admin.issues.issues.Issue.Table.created', { defaultValue: 'Created' }) as string,
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'numberOfDebates',
      headerName: t('edemokracia.admin.Admin.issues.issues.Issue.Table.numberOfDebates', {
        defaultValue: 'Debates',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t('edemokracia.admin.Admin.issues.issues.Issue.Table.description', {
        defaultValue: 'Description',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableDefaultIssuesIssueTableTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.issues.issues.Issue.Table.title.Filter', { defaultValue: 'Title' }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableDefaultIssuesIssueTableStatusFilter',
      attributeName: 'status',
      label: t('edemokracia.admin.Admin.issues.issues.Issue.Table.status.Filter', { defaultValue: 'Status' }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableDefaultIssuesIssueTableCreatedFilter',
      attributeName: 'created',
      label: t('edemokracia.admin.Admin.issues.issues.Issue.Table.created.Filter', {
        defaultValue: 'Created',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableDefaultIssuesIssueTableNumberOfDebatesFilter',
      attributeName: 'numberOfDebates',
      label: t('edemokracia.admin.Admin.issues.issues.Issue.Table.numberOfDebates.Filter', {
        defaultValue: 'Debates',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssuesTableDefaultIssuesIssueTableDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Admin.issues.issues.Issue.Table.description.Filter', {
        defaultValue: 'Description',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
