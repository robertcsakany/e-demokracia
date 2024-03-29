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
  AdminCityQueryCustomizer,
  AdminIssue,
  AdminIssueStored,
  AdminDistrict,
  AdminDistrictMaskBuilder,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminIssueCityView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{name,representation,districts{name}}',
  };

  const districtsSortModel: GridSortModel = [{ field: 'name', sort: 'asc' }];

  const districtsColumns: GridColDef<AdminDistrictStored>[] = [
    {
      ...baseColumnConfig,
      field: 'name',
      headerName: t('edemokracia.admin.Issue.city.City.View.districts.districts.name', {
        defaultValue: 'Name',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const districtsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCityViewDefaultCityViewDistrictsLabelWrapperDistrictsNameFilter',
      attributeName: 'name',
      label: t('edemokracia.admin.Issue.city.City.View.districts.districts.name.Filter', {
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
