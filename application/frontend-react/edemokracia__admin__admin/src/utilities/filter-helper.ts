///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/utilities/filter-helper.ts'
// Template name: actor/src/utilities/filter-helper.ts.hbs

import type { Filter, Operation } from '../components-api';

type FilterBy = {
  value: any;
  operator: Operation;
};

export const mapFiltersToQueryCustomizerProperty = (filters: Filter[], property: string): FilterBy[] | undefined => {
  if (!filters.some((filter) => filter.filterOption.attributeName === property)) return undefined;

  return filters
    .filter((filter) => filter.filterOption.attributeName === property && filter.filterBy.value)
    .map((filter) => {
      return {
        value: filter.filterBy.value,
        operator: filter.filterBy.operator,
      };
    });
};

export interface MultiFilter {
  [key: string]: FilterBy[] | undefined;
}

export const mapAllFiltersToQueryCustomizerProperties = (filters: Filter[], ...properties: string[]): MultiFilter => {
  let output: MultiFilter = {};

  for (const property of properties) {
    output[property] = mapFiltersToQueryCustomizerProperty(filters, property);
  }

  return output;
};
