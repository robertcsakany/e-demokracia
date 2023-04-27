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
import { AdminCountyStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminAdminCountiesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const columns: GridColDef<AdminCountyStored>[] = [
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.Admin.counties.counties.County.Table.name', { defaultValue: 'Name' }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminCountiesTableDefaultCountiesCountyTableNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.Admin.counties.counties.County.Table.name.Filter', {
        defaultValue: 'Name',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
