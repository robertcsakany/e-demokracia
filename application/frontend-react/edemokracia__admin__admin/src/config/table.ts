import type { DataGridProps, GridColDef } from '@mui/x-data-grid';

export const baseColumnConfig: Partial<GridColDef<any>> = {
  groupable: false,
  hideable: false,
};

export const baseTableConfig: Partial<DataGridProps<any>> = {
  autoHeight: true,
};

export const serverTableConfig: Partial<DataGridProps<any>> = {
  ...baseTableConfig,
  sortingOrder: ['desc', 'asc'],
  sortingMode: 'server',
  paginationMode: 'server',
};

export const pageServerTableConfig: Partial<DataGridProps<any>> = {
  ...serverTableConfig,
  disableSelectionOnClick: true,
  filterMode: 'server',
};

export const rangeDialogConfig: { numberOfElements: number } = {
  numberOfElements: 5,
};
