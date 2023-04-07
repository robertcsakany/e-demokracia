///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx.hbs
// Hook: Relation View

import { useTranslation } from 'react-i18next';
import { GridColDef, GridSortModel, GridRowParams, GridRenderCellParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminIssueCategoryStored,
  AdminIssue,
  AdminIssueStored,
  AdminIssueCategoryMaskBuilder,
  AdminIssueCategory,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
  AdminUserMaskBuilder,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminIssueCategoriesView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminIssueCategoryQueryCustomizer = {
    _mask: '{title,description,owner{representation},subcategories{title,description}}',
  };

  const subcategoriesSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const subcategoriesColumns: GridColDef<AdminIssueCategoryStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Issue.categories.Category.View.subcategories.subcategories.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'description',
      headerName: t('edemokracia.admin.Issue.categories.Category.View.subcategories.subcategories.description', {
        defaultValue: 'Description',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const subcategoriesRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewSubcategoriesLabelWrapperSubcategoriesTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Issue.categories.Category.View.subcategories.subcategories.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewSubcategoriesLabelWrapperSubcategoriesDescriptionFilter',
      attributeName: 'description',
      label: t('edemokracia.admin.Issue.categories.Category.View.subcategories.subcategories.description.Filter', {
        defaultValue: 'Description',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const subcategoriesInitialQueryCustomizer: AdminIssueCategoryQueryCustomizer = {
    _mask: '{title,description}',
    _orderBy: subcategoriesSortModel.length
      ? [
          {
            attribute: subcategoriesSortModel[0].field,
            descending: subcategoriesSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const ownerSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const ownerColumns: GridColDef<AdminUserStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Issue.categories.Category.View.owner.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const ownerRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminIssueCategoriesViewDefaultCategoryViewOwnerRepresentationFilter',
      attributeName: 'representation',
      label: t('edemokracia.admin.Issue.categories.Category.View.owner.representation.Filter', {
        defaultValue: 'Representation',
      }) as string,
      filterType: FilterType.string,
    },
  ];

  const ownerInitialQueryCustomizer: AdminUserQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: ownerSortModel.length
      ? [
          {
            attribute: ownerSortModel[0].field,
            descending: ownerSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
    queryCustomizer,
    subcategoriesColumns,
    subcategoriesRangeFilterOptions,
    subcategoriesInitialQueryCustomizer,
    ownerColumns,
    ownerRangeFilterOptions,
    ownerInitialQueryCustomizer,
  };
};
