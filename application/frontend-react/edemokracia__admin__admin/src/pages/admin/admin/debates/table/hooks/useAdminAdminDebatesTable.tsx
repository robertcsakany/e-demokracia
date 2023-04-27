//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access Table

import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { useTranslation } from 'react-i18next';
import { FilterType } from '../../../../../../components-api';
import type { FilterOption } from '../../../../../../components-api';
import { MdiIcon, useJudoNavigation } from '../../../../../../components';
import { fileHandling, serviceDateToUiDate, serviceTimeToUiTime } from '../../../../../../utilities';
import { AdminDebateStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminAdminDebatesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const columns: GridColDef<AdminDebateStored>[] = [
    {
      ...baseColumnConfig,
      field: 'issueTitle',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.issueTitle', {
        defaultValue: 'Issue',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.title', { defaultValue: 'Title' }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.status', {
        defaultValue: 'Status',
      }) as string,
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
      field: 'closeAt',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.closeAt', {
        defaultValue: 'Close at',
      }) as string,
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
      field: 'description',
      headerName: t('edemokracia.admin.Admin.debates.debates.Debate.Table.description', {
        defaultValue: 'Description',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesTableDefaultDebatesDebateTableIssueTitleFilter',
      attributeName: 'issueTitle',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.issueTitle.Filter', {
        defaultValue: 'Issue',
      }) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesTableDefaultDebatesDebateTableTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesTableDefaultDebatesDebateTableStatusFilter',
      attributeName: 'status',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.status.Filter', {
        defaultValue: 'Status',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesTableDefaultDebatesDebateTableCloseAtFilter',
      attributeName: 'closeAt',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.closeAt.Filter', {
        defaultValue: 'Close at',
      }) as string,
      filterType: FilterType.dateTime,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesTableDefaultDebatesDebateTableDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Admin.debates.debates.Debate.Table.description.Filter', {
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
