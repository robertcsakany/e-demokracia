//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Relation View

import { useTranslation } from 'react-i18next';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminUserStored,
  AdminDistrict,
  AdminDistrictStored,
  AdminUser,
  AdminDistrictQueryCustomizer,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling, serviceDateToUiDate, serviceTimeToUiTime } from '../../../../../../utilities';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminUserActivityDistrictsView = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminDistrictQueryCustomizer = {
    _mask: '{name,representation}',
  };

  return {
    queryCustomizer,
  };
};
