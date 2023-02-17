///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx.hbs
// Hook: Access Table

import type { GridColDef, GridRenderCellParams, GridRowParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { useTranslation } from 'react-i18next';
import { FilterType } from '../../../../../../components-api';
import type { FilterOption } from '../../../../../../components-api';
import { MdiIcon, useJudoNavigation } from '../../../../../../components';
import { fileHandling } from '../../../../../../utilities';
import { AdminDebateStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';

export const useAdminAdminDebatesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const columns: GridColDef<AdminDebateStored>[] = [
    {
      ...baseColumnConfig,
      field: 'closeAt',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.closeAt', {
        defaultValue: 'CloseAt',
      }) as string,
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.description', {
        defaultValue: 'Description',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.status', {
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
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.title', { defaultValue: 'Title' }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      attributeName: 'closeAt',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.closeAt.Filter', {
        defaultValue: 'CloseAt',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      attributeName: 'description',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.description.Filter', {
        defaultValue: 'Description',
      }) as string,
      filterType: FilterType.string,
    },
    {
      attributeName: 'status',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.status.Filter', {
        defaultValue: 'Status',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
    {
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
