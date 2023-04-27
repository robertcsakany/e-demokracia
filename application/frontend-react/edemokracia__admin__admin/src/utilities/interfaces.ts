//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/interfaces.ts'
// Template name: actor/src/utilities/interfaces.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/utilities/interfaces.ts.hbs

import type { GridColDef } from '@mui/x-data-grid';
import { ColumnsActionsOptions, TableRowAction } from './table-row-actions';

export type ColumnActionsProvider<R> = (
  id: string,
  actions: TableRowAction<R>[],
  options?: ColumnsActionsOptions,
) => GridColDef[];
