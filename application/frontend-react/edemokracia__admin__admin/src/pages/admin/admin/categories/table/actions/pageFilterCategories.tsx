///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::categories#PageFilter
// Action: FilterAction

import { AdminIssueCategoryQueryCustomizer } from '../../../../../../generated/data-api';
import { useFilterDialog } from '../../../../../../components';
import type { Filter, FilterOption } from '../../../../../../components-api';
import { mapAllFiltersToQueryCustomizerProperties } from '../../../../../../utilities';

export type PageFilterCategoriesAction = (filterOptions: FilterOption[], filters: Filter[]) => Promise<void>;

export const usePageFilterCategoriesAction = (
  setFilters: (filters: Filter[]) => void,
  setPage: (page: number) => void,
  setQueryCustomizer: Function,
  openFilterDialog: (filterOptions: FilterOption[], filters: Filter[]) => Promise<Filter[]>,
): PageFilterCategoriesAction => {
  return async function pageFilterCategoriesAction(filterOptions: FilterOption[], filters: Filter[]) {
    const newFilters = await openFilterDialog(filterOptions, filters);
    const numberOfElements = 10;

    if (newFilters) {
      setPage(0);
      setFilters(newFilters);

      setQueryCustomizer((prevQueryCustomizer: AdminIssueCategoryQueryCustomizer) => {
        return {
          ...prevQueryCustomizer,
          _seek: {
            limit: numberOfElements + 1,
          },
          ...mapAllFiltersToQueryCustomizerProperties(newFilters, 'title', 'description'),
        };
      });
    }
  };
};
