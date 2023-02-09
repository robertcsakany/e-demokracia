///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components-api/dialog/FilterDialog.ts'
// Template name: actor/src/components-api/dialog/FilterDialog.ts.hbs

import { _BooleanOperation, _EnumerationOperation, _NumericOperation, _StringOperation } from '@judo/data-api-common';

export interface FilterOption {
  attributeName: string;
  label?: string;
  filterType: FilterType;
  enumValues?: Array<string>;
}

export enum FilterType {
  boolean,
  numeric,
  string,
  enumeration,
  date,
  dateTime,
  // time,
  trinaryLogic,
}

export type Operation = _BooleanOperation | _EnumerationOperation | _NumericOperation | _StringOperation;

export type FilterBy = {
  value?: any;
  operator: Operation;
};

export interface Filter {
  id: number;
  filterOption: FilterOption;
  filterBy: FilterBy;
}

export interface FilterDialogProps {
  filters?: Filter[];
  filterOptions: FilterOption[];
  resolve: (value: any) => void;
  open: boolean;
  handleClose: () => void;
}

export interface FilterOperatorProps {
  filter: Filter;
  setFilterOperator: (filter: Filter, newOperator: Operation) => void;
}

export interface FilterInputProps {
  filter: Filter;
  setFilterValue: (filter: Filter, newValue: any) => void;
}

export interface FilterProps {
  filter: Filter;
  closeHandler: (filter: Filter) => void;
  setFilterValue: (filter: Filter, newValue: any) => void;
  setFilterOperator: (filter: Filter, newOperator: Operation) => void;
}
