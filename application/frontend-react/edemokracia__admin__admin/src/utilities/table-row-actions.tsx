//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/table-row-actions.tsx'
// Template name: actor/src/utilities/table-row-actions.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/utilities/table-row-actions.tsx.hbs

import type { ReactNode } from 'react';

export interface TableRowAction<R> {
  id: string;
  label: string;
  action: (row: R) => void;
  icon: ReactNode;
  disabled?: (row: R) => boolean;
}

export interface ColumnsActionsOptions {
  shownActions?: number;
  showLabel?: boolean;
}
