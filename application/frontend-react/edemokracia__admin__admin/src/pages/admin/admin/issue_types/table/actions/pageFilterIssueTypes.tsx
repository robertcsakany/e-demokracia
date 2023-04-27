//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: FilterAction

import { AdminIssueTypeQueryCustomizer } from '../../../../../../generated/data-api';
import { useFilterDialog } from '../../../../../../components/dialog';
import type { Filter, FilterOption } from '../../../../../../components-api';
import { mapAllFiltersToQueryCustomizerProperties } from '../../../../../../utilities';

export type PageFilterIssueTypesAction = (
  id: string,
  filterOptions: FilterOption[],
  filters: Filter[],
) => Promise<void>;

export const usePageFilterIssueTypesAction = (
  setFilters: (filters: Filter[]) => void,
  setPage: (page: number) => void,
  setQueryCustomizer: Function,
  openFilterDialog: (id: string, filterOptions: FilterOption[], filters: Filter[]) => Promise<Filter[]>,
): PageFilterIssueTypesAction => {
  return async function pageFilterIssueTypesAction(id: string, filterOptions: FilterOption[], filters: Filter[]) {
    const newFilters = await openFilterDialog(id, filterOptions, filters);
    const numberOfElements = 10;

    if (newFilters) {
      setPage(0);
      setFilters(newFilters);

      setQueryCustomizer((prevQueryCustomizer: AdminIssueTypeQueryCustomizer) => {
        return {
          ...prevQueryCustomizer,
          _seek: {
            limit: numberOfElements + 1,
          },
          ...mapAllFiltersToQueryCustomizerProperties(newFilters, 'title', 'voteType', 'description'),
        };
      });
    }
  };
};
