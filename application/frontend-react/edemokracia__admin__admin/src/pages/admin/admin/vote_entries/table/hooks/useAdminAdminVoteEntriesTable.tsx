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
import { LoadingButton } from '@mui/lab';
import { useTranslation } from 'react-i18next';
import { FilterType } from '../../../../../../components-api';
import type { FilterOption } from '../../../../../../components-api';
import { MdiIcon, useJudoNavigation } from '../../../../../../components';
import { fileHandling, serviceDateToUiDate, serviceTimeToUiTime } from '../../../../../../utilities';
import { AdminVoteEntryStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminAdminVoteEntriesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const columns: GridColDef<AdminVoteEntryStored>[] = [
    {
      ...baseColumnConfig,
      field: 'userName',
      headerName: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.userName', {
        defaultValue: 'UserName',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.created', {
        defaultValue: 'Created',
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
      field: 'voteTitle',
      headerName: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.voteTitle', {
        defaultValue: 'VoteTitle',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'debateTitle',
      headerName: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.debateTitle', {
        defaultValue: 'DebateTitle',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'issueTitle',
      headerName: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.issueTitle', {
        defaultValue: 'IssueTitle',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'voteStatus',
      headerName: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.voteStatus', {
        defaultValue: 'VoteStatus',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 170,
      type: 'string',
      sortable: false,
      description: t('judo.pages.table.column.not-sortable', {
        defaultValue: 'This column is not sortable.',
      }) as string,
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteEntriesTableDefaultVoteEntriesVoteEntryTableUserNameFilter',
      attributeName: 'userName',
      label: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.userName.Filter', {
        defaultValue: 'UserName',
      }) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteEntriesTableDefaultVoteEntriesVoteEntryTableCreatedFilter',
      attributeName: 'created',
      label: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.created.Filter', {
        defaultValue: 'Created',
      }) as string,
      filterType: FilterType.dateTime,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteEntriesTableDefaultVoteEntriesVoteEntryTableVoteTitleFilter',
      attributeName: 'voteTitle',
      label: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.voteTitle.Filter', {
        defaultValue: 'VoteTitle',
      }) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteEntriesTableDefaultVoteEntriesVoteEntryTableDebateTitleFilter',
      attributeName: 'debateTitle',
      label: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.debateTitle.Filter', {
        defaultValue: 'DebateTitle',
      }) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteEntriesTableDefaultVoteEntriesVoteEntryTableIssueTitleFilter',
      attributeName: 'issueTitle',
      label: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.issueTitle.Filter', {
        defaultValue: 'IssueTitle',
      }) as string,
      filterType: FilterType.string,
    },

    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteEntriesTableDefaultVoteEntriesVoteEntryTableVoteStatusFilter',
      attributeName: 'voteStatus',
      label: t('edemokracia.admin.Admin.voteEntries.voteEntries.VoteEntry.Table.voteStatus.Filter', {
        defaultValue: 'VoteStatus',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
