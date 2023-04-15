//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Relation View

import { useTranslation } from 'react-i18next';
import { GridColDef, GridSortModel, GridRowParams, GridRenderCellParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminCreateIssueInput,
  AdminCityQueryCustomizer,
  AdminCityMaskBuilder,
  AdminCountyQueryCustomizer,
  AdminCounty,
  AdminCountyStored,
  AdminCityStored,
  AdminCity,
  AdminCreateIssueInputStored,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminCreateIssueInputCountyView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminCountyQueryCustomizer = {
    _mask: '{name,representation,cities{name}}',
  };

  const citiesSortModel: GridSortModel = [{ field: 'name', sort: 'asc' }];

  const citiesColumns: GridColDef<AdminCityStored>[] = [
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.CreateIssueInput.county.County.View.cities.cities.name', {
        defaultValue: 'Name',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const citiesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminCreateIssueInputCountyViewDefaultCountyViewCitiesLabelWrapperCitiesNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.CreateIssueInput.county.County.View.cities.cities.name.Filter', {
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
