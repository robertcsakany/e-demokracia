///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/utilities/table-row-actions.tsx'
// Template name: actor/src/utilities/table-row-actions.tsx.hbs

import type { ReactNode } from 'react';

export interface TableRowAction<R> {
  label: string;
  action: (row: R) => void;
  icon: ReactNode;
  disabled?: (row: R) => boolean;
}

export interface ColumnsActionsOptions {
  shownActions?: number;
  showLabel?: boolean;
}
