///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/utilities/interfaces.ts'
// Template name: actor/src/utilities/interfaces.ts.hbs

import type { GridColDef } from '@mui/x-data-grid';
import { ColumnsActionsOptions, TableRowAction } from './table-row-actions';
import type { FilterOption } from '../components-api';

export type ColumnActionsProvider<R> = (actions: TableRowAction<R>[], options?: ColumnsActionsOptions) => GridColDef[];

export type AlternativeApplicationGenerator = (translateFn: Function) => Record<string, string>;

export type HandleApplicationChange = (applicationKey: string) => void;
