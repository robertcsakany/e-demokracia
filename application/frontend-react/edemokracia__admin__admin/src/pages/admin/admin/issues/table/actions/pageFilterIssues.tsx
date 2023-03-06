///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::issues#PageFilter
// Action: FilterAction

import { AdminIssueQueryCustomizer } from '../../../../../../generated/data-api';
import { useFilterDialog } from '../../../../../../components';
import type { Filter, FilterOption } from '../../../../../../components-api';
import { mapAllFiltersToQueryCustomizerProperties } from '../../../../../../utilities';

export type PageFilterIssuesAction = (filterOptions: FilterOption[], filters: Filter[]) => Promise<void>;

export const usePageFilterIssuesAction = (
  setFilters: (filters: Filter[]) => void,
  setPage: (page: number) => void,
  setQueryCustomizer: Function,
  openFilterDialog: (filterOptions: FilterOption[], filters: Filter[]) => Promise<Filter[]>,
): PageFilterIssuesAction => {
  return async function pageFilterIssuesAction(filterOptions: FilterOption[], filters: Filter[]) {
    const newFilters = await openFilterDialog(filterOptions, filters);
    const numberOfElements = 10;

    if (newFilters) {
      setPage(0);
      setFilters(newFilters);

      setQueryCustomizer((prevQueryCustomizer: AdminIssueQueryCustomizer) => {
        return {
          ...prevQueryCustomizer,
          _seek: {
            limit: numberOfElements + 1,
          },
          ...mapAllFiltersToQueryCustomizerProperties(
            newFilters,
            'title',
            'status',
            'created',
            'description',
            'representation',
          ),
        };
      });
    }
  };
};
