//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/dialog/FilterDialog.ts'
// Template name: actor/src/components-api/dialog/FilterDialog.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230421_094714_47f1521a_develop
// Template file: actor/src/components-api/dialog/FilterDialog.ts.hbs

import { _BooleanOperation, _EnumerationOperation, _NumericOperation, _StringOperation } from '@judo/data-api-common';

export interface FilterOption {
  id: string;
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
  id: string;
  operationId: string;
  valueId: string;
  filterOption: FilterOption;
  filterBy: FilterBy;
}

export interface FilterDialogProps {
  id: string;
  filters?: Filter[];
  filterOptions: FilterOption[];
  resolve: (value: any) => void;
  open: boolean;
  handleClose: () => void;
}

export interface FilterOperatorProps {
  operatorId: string;
  valueId: string;
  filter: Filter;
  setFilterOperator: (filter: Filter, newOperator: Operation) => void;
}

export interface FilterInputProps {
  operatorId: string;
  valueId: string;
  filter: Filter;
  setFilterValue: (filter: Filter, newValue: any) => void;
}

export interface FilterProps {
  id: string;
  filter: Filter;
  closeHandler: (filter: Filter) => void;
  setFilterValue: (filter: Filter, newValue: any) => void;
  setFilterOperator: (filter: Filter, newOperator: Operation) => void;
}
