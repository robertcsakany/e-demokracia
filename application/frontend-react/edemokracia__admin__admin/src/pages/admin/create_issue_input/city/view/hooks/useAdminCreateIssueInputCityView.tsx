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
import { LoadingButton } from '@mui/lab';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminCreateIssueInput,
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminDistrictMaskBuilder,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminCreateIssueInputStored,
  AdminDistrictQueryCustomizer,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling, serviceDateToUiDate, serviceTimeToUiTime } from '../../../../../../utilities';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminCreateIssueInputCityView = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{name,representation,districts{name}}',
  };

  const districtsSortModel: GridSortModel = [{ field: 'name', sort: 'asc' }];

  const districtsColumns: GridColDef<AdminDistrictStored>[] = [
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.CreateIssueInput.city.City.View.districts.districts.name', {
        defaultValue: 'Name',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const districtsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminCreateIssueInputCityViewDefaultCityViewDistrictsLabelWrapperDistrictsNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.CreateIssueInput.city.City.View.districts.districts.name.Filter', {
        defaultValue: 'Name',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const districtsInitialQueryCustomizer: AdminDistrictQueryCustomizer = {
    _mask: '{name}',
    _orderBy: districtsSortModel.length
      ? [
          {
            attribute: districtsSortModel[0].field,
            descending: districtsSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
    queryCustomizer,
    districtsColumns,
    districtsRangeFilterOptions,
    districtsInitialQueryCustomizer,
  };
};
