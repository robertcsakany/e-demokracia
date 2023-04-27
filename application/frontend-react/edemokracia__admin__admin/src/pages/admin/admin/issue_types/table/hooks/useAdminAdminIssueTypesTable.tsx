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
import { AdminIssueTypeStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminAdminIssueTypesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const columns: GridColDef<AdminIssueTypeStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Admin.issueTypes.issueTypes.IssueType.Table.title', {
        defaultValue: 'Title',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'voteType',
      headerName: t('edemokracia.admin.Admin.issueTypes.issueTypes.IssueType.Table.voteType', {
        defaultValue: 'Default vote type',
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
      field: 'description',
      headerName: t('edemokracia.admin.Admin.issueTypes.issueTypes.IssueType.Table.description', {
        defaultValue: 'Description',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableDefaultIssueTypesIssueTypeTableTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.issueTypes.issueTypes.IssueType.Table.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableDefaultIssueTypesIssueTypeTableVoteTypeFilter',
      attributeName: 'voteType',
      label: t('edemokracia.admin.Admin.issueTypes.issueTypes.IssueType.Table.voteType.Filter', {
        defaultValue: 'Default vote type',
      }) as string,
      filterType: FilterType.enumeration,
      enumValues: ['YES_NO', 'YES_NO_ABSTAIN', 'SELECT_ANSWER', 'RATE', 'NO_VOTE'],
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminIssueTypesTableDefaultIssueTypesIssueTypeTableDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Admin.issueTypes.issueTypes.IssueType.Table.description.Filter', {
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
