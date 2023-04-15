//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/dialog/DialogContext.ts'
// Template name: actor/src/components-api/dialog/DialogContext.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components-api/dialog/DialogContext.ts.hbs

import { ReactNode } from 'react';
import { JudoStored, QueryCustomizer } from '@judo/data-api-common';
import { GridColumns, GridRowId, GridSelectionModel, GridSortItem } from '@mui/x-data-grid';
import { Filter, FilterOption } from './FilterDialog';

export interface DialogProviderProps {
  children: ReactNode;
}

export interface PageDialogProviderContext {
  openPageDialog: (page: ReactNode) => Promise<void>;
}

export interface ConfirmDialogProviderContext {
  openConfirmDialog: (
    id: string,
    confirmationMessage: string | ReactNode,
    title?: string | ReactNode,
  ) => Promise<boolean>;
}

export interface OpenRangeDialogProps<T extends JudoStored<T>, U extends QueryCustomizer<T>> {
  id: string;
  columns: GridColumns<T>;
  defaultSortField: GridSortItem;
  rangeCall: (queryCustomizer: U) => Promise<Array<T>>;
  single?: boolean;
  alreadySelectedItems: GridSelectionModel | GridRowId;
  initialQueryCustomizer: U;
  filterOptions: FilterOption[];
}

export interface RangeDialogProviderContext {
  openRangeDialog: <T extends JudoStored<T>, U extends QueryCustomizer<T>>(
    props: OpenRangeDialogProps<T, U>,
  ) => Promise<T[] | T>;
}

export interface FilterDialogProviderContext {
  openFilterDialog: (id: string, filterOptions: FilterOption[], filters?: Filter[]) => Promise<Filter[]>;
}
