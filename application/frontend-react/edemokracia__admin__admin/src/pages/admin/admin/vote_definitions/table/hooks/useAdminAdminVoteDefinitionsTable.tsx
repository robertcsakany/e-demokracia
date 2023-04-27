//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
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
import { fileHandling, serviceDateToUiDate } from '../../../../../../utilities';
import { AdminVoteDefinitionStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminAdminVoteDefinitionsTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const columns: GridColDef<AdminVoteDefinitionStored>[] = [
    {
      ...baseColumnConfig,
      field: 'voteType',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.voteType', {
        defaultValue: 'VoteType',
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
      field: 'title',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.title', {
        defaultValue: 'Title',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'numberOfVotes',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.numberOfVotes', {
        defaultValue: 'NumberOfVotes',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.created', {
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
      field: 'status',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.status', {
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
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.closeAt', {
        defaultValue: 'CloseAt',
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
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.description', {
        defaultValue: 'Description',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableVoteTypeFilter',
      attributeName: 'voteType',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.voteType.Filter', {
        defaultValue: 'VoteType',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['YES_NO', 'YES_NO_ABSTAIN', 'SELECT_ANSWER', 'RATE', 'NO_VOTE'],
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableNumberOfVotesFilter',
      attributeName: 'numberOfVotes',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.numberOfVotes.Filter', {
        defaultValue: 'NumberOfVotes',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableCreatedFilter',
      attributeName: 'created',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.created.Filter', {
        defaultValue: 'Created',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableStatusFilter',
      attributeName: 'status',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.status.Filter', {
        defaultValue: 'Status',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['CREATED', 'PENDING', 'ACTIVE', 'CLOSED'],
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableCloseAtFilter',
      attributeName: 'closeAt',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.closeAt.Filter', {
        defaultValue: 'CloseAt',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.description.Filter', {
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
