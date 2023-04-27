//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/dialog/ConfirmationDialog.ts'
// Template name: actor/src/components-api/dialog/ConfirmationDialog.ts
// Template file: actor/src/components-api/dialog/ConfirmationDialog.ts.hbs

import type { ReactNode } from 'react';

export interface ConfirmationDialogProps {
  id: string;
  confirmationMessage: string | ReactNode;
  title: string | ReactNode;
  resolve: (value: boolean) => void;
  open: boolean;
  handleClose: () => void;
}
