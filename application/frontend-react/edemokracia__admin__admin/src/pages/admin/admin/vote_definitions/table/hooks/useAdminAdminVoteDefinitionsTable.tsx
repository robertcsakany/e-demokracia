//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
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
      field: 'title',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.created', {
        defaultValue: 'Created',
      }) as string,
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
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'status',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.status', {
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
      field: 'closeAt',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.closeAt', {
        defaultValue: 'CloseAt',
      }) as string,
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
      field: 'isRatingType',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isRatingType', {
        defaultValue: 'IsRatingType',
      }) as string,
      width: 100,
      type: 'boolean',
      align: 'center',
      renderCell: (params: GridRenderCellParams<any, AdminVoteDefinitionStored>) => {
        return params.row.isRatingType ? (
          <MdiIcon path="check-circle" color="green" />
        ) : (
          <MdiIcon path="close-circle" color="red" />
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'isSelectAnswerType',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isSelectAnswerType', {
        defaultValue: 'IsSelectAnswerType',
      }) as string,
      width: 100,
      type: 'boolean',
      align: 'center',
      renderCell: (params: GridRenderCellParams<any, AdminVoteDefinitionStored>) => {
        return params.row.isSelectAnswerType ? (
          <MdiIcon path="check-circle" color="green" />
        ) : (
          <MdiIcon path="close-circle" color="red" />
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'isYesNoAbstainType',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isYesNoAbstainType', {
        defaultValue: 'IsYesNoAbstainType',
      }) as string,
      width: 100,
      type: 'boolean',
      align: 'center',
      renderCell: (params: GridRenderCellParams<any, AdminVoteDefinitionStored>) => {
        return params.row.isYesNoAbstainType ? (
          <MdiIcon path="check-circle" color="green" />
        ) : (
          <MdiIcon path="close-circle" color="red" />
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'isYesNoType',
      headerName: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isYesNoType', {
        defaultValue: 'IsYesNoType',
      }) as string,
      width: 100,
      type: 'boolean',
      align: 'center',
      renderCell: (params: GridRenderCellParams<any, AdminVoteDefinitionStored>) => {
        return params.row.isYesNoType ? (
          <MdiIcon path="check-circle" color="green" />
        ) : (
          <MdiIcon path="close-circle" color="red" />
        );
      },
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
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
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.description.Filter', {
        defaultValue: 'Description',
      }) as string,
      filterType: FilterType.string,
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
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableIsRatingTypeFilter',
      attributeName: 'isRatingType',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isRatingType.Filter', {
        defaultValue: 'IsRatingType',
      }) as string,
      filterType: FilterType.trinaryLogic,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableIsSelectAnswerTypeFilter',
      attributeName: 'isSelectAnswerType',
      label: t(
        'edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isSelectAnswerType.Filter',
        { defaultValue: 'IsSelectAnswerType' },
      ) as string,
      filterType: FilterType.trinaryLogic,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableIsYesNoAbstainTypeFilter',
      attributeName: 'isYesNoAbstainType',
      label: t(
        'edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isYesNoAbstainType.Filter',
        { defaultValue: 'IsYesNoAbstainType' },
      ) as string,
      filterType: FilterType.trinaryLogic,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminVoteDefinitionsTableDefaultVoteDefinitionsVoteDefinitionTableIsYesNoTypeFilter',
      attributeName: 'isYesNoType',
      label: t('edemokracia.admin.Admin.voteDefinitions.voteDefinitions.VoteDefinition.Table.isYesNoType.Filter', {
        defaultValue: 'IsYesNoType',
      }) as string,
      filterType: FilterType.trinaryLogic,
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
