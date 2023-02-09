///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
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
import { AdminCountyStored } from '../../../../../../generated/data-api';
import { baseColumnConfig } from '../../../../../../config';

export const useAdminAdminCountiesTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const columns: GridColDef<AdminCountyStored>[] = [
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.Admin.counties.counties.County.Table.name', { defaultValue: 'Name' }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
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
