//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Relation Table

import type { GridColDef, GridRenderCellParams, GridRowParams } from '@mui/x-data-grid';
import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import { FilterType } from '../../../../../../components-api';
import type { FilterOption } from '../../../../../../components-api';
import { useJudoNavigation, MdiIcon } from '../../../../../../components';
import { AdminSimpleVoteStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminCommentVotesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const columns: GridColDef<AdminSimpleVoteStored>[] = [
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Comment.votes.votes.Vote.Table.created', { defaultValue: 'Created' }) as string,
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'type',
      headerName: t('edemokracia.admin.Comment.votes.votes.Vote.Table.type', { defaultValue: 'Type' }) as string,
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
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminCommentVotesTableDefaultVotesVoteTableCreatedFilter',
      attributeName: 'created',
      label: t('edemokracia.admin.Comment.votes.votes.Vote.Table.created.Filter', {
        defaultValue: 'Created',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminCommentVotesTableDefaultVotesVoteTableTypeFilter',
      attributeName: 'type',
      label: t('edemokracia.admin.Comment.votes.votes.Vote.Table.type.Filter', { defaultValue: 'Type' }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['UP', 'DOWN'],
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
