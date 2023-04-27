//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access View

import { useTranslation } from 'react-i18next';
import {
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
  AdminUserQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminDistrictQueryCustomizer,
  AdminCountyMaskBuilder,
  AdminCityMaskBuilder,
  AdminDistrict,
  AdminUser,
  AdminDistrictMaskBuilder,
  AdminCityStored,
  AdminCountyStored,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling, serviceDateToUiDate, serviceTimeToUiTime } from '../../../../../../utilities';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminAdminUsersView = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminUserQueryCustomizer = {
    _mask:
      '{userName,isAdmin,created,firstName,lastName,email,phone,residentCounty{representation},residentCity{representation},residentDistrict{representation},activityCounties{representation},activityCities{representation},activityDistricts{representation}}',
  };

  const activityCitiesSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const activityCitiesColumns: GridColDef<AdminCityStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t(
        'edemokracia.admin.Admin.users.User.View.Areas.Areas.activity.activity.cities.activity.cities.activityCities.activityCities.representation',
        { defaultValue: 'City' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const activityCitiesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersViewDefaultUserViewAreasLabelWrapperAreasActivityActivityCitiesActivityCitiesActivityCitiesLabelWrapperActivityCitiesRepresentationFilter',
      attributeName: 'representation',
      label: t(
        'edemokracia.admin.Admin.users.User.View.Areas.Areas.activity.activity.cities.activity.cities.activityCities.activityCities.representation.Filter',
        { defaultValue: 'City' },
      ) as string,
      filterType: FilterType.string,
    },
  ];

  const activityCitiesInitialQueryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: activityCitiesSortModel.length
      ? [
          {
            attribute: activityCitiesSortModel[0].field,
            descending: activityCitiesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const activityDistrictsSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const activityDistrictsColumns: GridColDef<AdminDistrictStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t(
        'edemokracia.admin.Admin.users.User.View.Areas.Areas.activity.activity.districts.activity.districts.activityDistricts.activityDistricts.representation',
        { defaultValue: 'District' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const activityDistrictsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersViewDefaultUserViewAreasLabelWrapperAreasActivityActivityDistrictsActivityDistrictsActivityDistrictsLabelWrapperActivityDistrictsRepresentationFilter',
      attributeName: 'representation',
      label: t(
        'edemokracia.admin.Admin.users.User.View.Areas.Areas.activity.activity.districts.activity.districts.activityDistricts.activityDistricts.representation.Filter',
        { defaultValue: 'District' },
      ) as string,
      filterType: FilterType.string,
    },
  ];

  const activityDistrictsInitialQueryCustomizer: AdminDistrictQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: activityDistrictsSortModel.length
      ? [
          {
            attribute: activityDistrictsSortModel[0].field,
            descending: activityDistrictsSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const activityCountiesSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const activityCountiesColumns: GridColDef<AdminCountyStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t(
        'edemokracia.admin.Admin.users.User.View.Areas.Areas.activity.tab.activity.counties.tab.activity.counties.activityCounties.activityCounties.representation',
        { defaultValue: 'County' },
      ) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const activityCountiesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersViewDefaultUserViewAreasLabelWrapperAreasActivityTabActivityCountiesTabActivityCountiesActivityCountiesLabelWrapperActivityCountiesRepresentationFilter',
      attributeName: 'representation',
      label: t(
        'edemokracia.admin.Admin.users.User.View.Areas.Areas.activity.tab.activity.counties.tab.activity.counties.activityCounties.activityCounties.representation.Filter',
        { defaultValue: 'County' },
      ) as string,
      filterType: FilterType.string,
    },
  ];

  const activityCountiesInitialQueryCustomizer: AdminCountyQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: activityCountiesSortModel.length
      ? [
          {
            attribute: activityCountiesSortModel[0].field,
            descending: activityCountiesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const residentCitySortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const residentCityColumns: GridColDef<AdminCityStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Admin.users.User.View.Areas.Areas.Residency.residentCity.representation', {
        defaultValue: 'City',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const residentCityRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersViewDefaultUserViewAreasLabelWrapperAreasResidencyResidentCityRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Admin.users.User.View.Areas.Areas.Residency.residentCity.representation.Filter', {
        defaultValue: 'City',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const residentCityInitialQueryCustomizer: AdminCityQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: residentCitySortModel.length
      ? [
          {
            attribute: residentCitySortModel[0].field,
            descending: residentCitySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const residentCountySortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const residentCountyColumns: GridColDef<AdminCountyStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Admin.users.User.View.Areas.Areas.Residency.residentCounty.representation', {
        defaultValue: 'County',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const residentCountyRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersViewDefaultUserViewAreasLabelWrapperAreasResidencyResidentCountyRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Admin.users.User.View.Areas.Areas.Residency.residentCounty.representation.Filter', {
        defaultValue: 'County',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const residentCountyInitialQueryCustomizer: AdminCountyQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: residentCountySortModel.length
      ? [
          {
            attribute: residentCountySortModel[0].field,
            descending: residentCountySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  const residentDistrictSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const residentDistrictColumns: GridColDef<AdminDistrictStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Admin.users.User.View.Areas.Areas.Residency.residentDistrict.representation', {
        defaultValue: 'District',
      }) as string,
      headerClassName: 'data-grid-column-header',

      width: 230,
      type: 'string',
    },
  ];

  const residentDistrictRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersViewDefaultUserViewAreasLabelWrapperAreasResidencyResidentDistrictRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Admin.users.User.View.Areas.Areas.Residency.residentDistrict.representation.Filter', {
        defaultValue: 'District',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const residentDistrictInitialQueryCustomizer: AdminDistrictQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: residentDistrictSortModel.length
      ? [
          {
            attribute: residentDistrictSortModel[0].field,
            descending: residentDistrictSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
    queryCustomizer,
    activityCitiesColumns,
    activityCitiesRangeFilterOptions,
    activityCitiesInitialQueryCustomizer,
    activityDistrictsColumns,
    activityDistrictsRangeFilterOptions,
    activityDistrictsInitialQueryCustomizer,
    activityCountiesColumns,
    activityCountiesRangeFilterOptions,
    activityCountiesInitialQueryCustomizer,
    residentCityColumns,
    residentCityRangeFilterOptions,
    residentCityInitialQueryCustomizer,
    residentCountyColumns,
    residentCountyRangeFilterOptions,
    residentCountyInitialQueryCustomizer,
    residentDistrictColumns,
    residentDistrictRangeFilterOptions,
    residentDistrictInitialQueryCustomizer,
  };
};
