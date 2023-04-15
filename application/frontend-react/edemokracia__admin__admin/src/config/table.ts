//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/config/table.ts'
// Template name: actor/src/config/table.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/config/table.ts.hbs

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
