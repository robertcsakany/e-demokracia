///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::counties#PageFilter
// Action owner name: edemokracia::admin::Admin.counties#Table
// Action DataElement name: counties
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::County
// Owner Page name: edemokracia::admin::Admin.counties#Table
// Action: FilterAction

import { AdminCountyQueryCustomizer } from '../../../../../../generated/data-api';
import { useFilterDialog } from '../../../../../../components';
import type { Filter, FilterOption } from '../../../../../../components-api';
import { mapAllFiltersToQueryCustomizerProperties } from '../../../../../../utilities';

export type PageFilterCountiesAction = (filterOptions: FilterOption[], filters: Filter[]) => Promise<void>;

export const usePageFilterCountiesAction = (
  setFilters: (filters: Filter[]) => void,
  setPage: (page: number) => void,
  setQueryCustomizer: Function,
  openFilterDialog: (filterOptions: FilterOption[], filters: Filter[]) => Promise<Filter[]>,
): PageFilterCountiesAction => {
  return async function pageFilterCountiesAction(filterOptions: FilterOption[], filters: Filter[]) {
    const newFilters = await openFilterDialog(filterOptions, filters);
    const numberOfElements = 10;

    if (newFilters) {
      setPage(0);
      setFilters(newFilters);

      setQueryCustomizer((prevQueryCustomizer: AdminCountyQueryCustomizer) => {
        return {
          ...prevQueryCustomizer,
          _seek: {
            limit: numberOfElements + 1,
          },
          ...mapAllFiltersToQueryCustomizerProperties(newFilters, 'name'),
        };
      });
    }
  };
};
