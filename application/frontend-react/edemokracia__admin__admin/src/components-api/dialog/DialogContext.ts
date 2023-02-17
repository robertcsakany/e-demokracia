///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/components-api/dialog/DialogContext.ts'
// Template name: actor/src/components-api/dialog/DialogContext.ts.hbs

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
  openConfirmDialog: (confirmationMessage: string | ReactNode, title?: string | ReactNode) => Promise<boolean>;
}

export interface OpenRangeDialogProps<T extends JudoStored<T>, U extends QueryCustomizer<T>> {
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
  openFilterDialog: (filterOptions: FilterOption[], filters?: Filter[]) => Promise<Filter[]>;
}
