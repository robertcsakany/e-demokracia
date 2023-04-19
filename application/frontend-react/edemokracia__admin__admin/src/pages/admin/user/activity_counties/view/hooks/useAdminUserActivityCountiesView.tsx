//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
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
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminCityMaskBuilder,
  AdminCountyQueryCustomizer,
  AdminUser,
  AdminCounty,
  AdminCountyStored,
  AdminCityStored,
  AdminCity,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling, serviceDateToUiDate } from '../../../../../../utilities';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminUserActivityCountiesView = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminCountyQueryCustomizer = {
    _mask: '{name,representation,cities{name}}',
  };

  const citiesSortModel: GridSortModel = [{ field: 'name', sort: 'asc' }];

  const citiesColumns: GridColDef<AdminCityStored>[] = [
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.User.activityCounties.County.View.cities.cities.name', {
        defaultValue: 'Name',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const citiesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminUserActivityCountiesViewDefaultCountyViewCitiesLabelWrapperCitiesNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.User.activityCounties.County.View.cities.cities.name.Filter', {
        defaultValue: 'Name',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const citiesInitialQueryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{name}',
    _orderBy: citiesSortModel.length
      ? [
          {
            attribute: citiesSortModel[0].field,
            descending: citiesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
    queryCustomizer,
    citiesColumns,
    citiesRangeFilterOptions,
    citiesInitialQueryCustomizer,
  };
};
