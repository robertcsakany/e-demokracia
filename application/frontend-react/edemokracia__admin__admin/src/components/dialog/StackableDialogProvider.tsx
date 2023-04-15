//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/dialog/StackableDialogProvider.tsx'
// Template name: actor/src/components/dialog/StackableDialogProvider.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components/dialog/StackableDialogProvider.tsx.hbs

import { useRef, createContext, useContext, useState, ReactNode } from 'react';
import { Dialog } from '@mui/material';
import type { DialogProps } from '@mui/material';

export type DialogOption = Omit<DialogProps, 'open'>;

type ProviderContext = readonly [(option: DialogOption) => void, () => void];

const EMPTY_FUNC = () => {};
const DialogContext = createContext<ProviderContext>([EMPTY_FUNC, EMPTY_FUNC]);

export const useDialog = () => useContext(DialogContext);

export function StackableDialogProvider({ children }: { children: ReactNode }) {
  const [dialogs, setDialogs] = useState<DialogProps[]>([]);
  const createDialog = (option: DialogOption) => {
    const dialog = { ...option, open: true };
    setDialogs((d) => [...d, dialog]);
  };
  const closeDialog = () => {
    setDialogs((d) => {
      // const tmp = d[d.length - 1];
      //
      // if (tmp && tmp.disableBackdropClick && reason === 'backdropClick') {
      //     return d;
      // }

      const latestDialog = d.pop();
      if (!latestDialog) return d;
      // if (latestDialog.onClose) latestDialog.onClose({}, undefined);
      latestDialog.open = false;
      return [...d];
      // return [...d].concat({ ...latestDialog, open: false });
    });
  };
  const contextValue = useRef([createDialog, closeDialog] as const);

  return (
    <DialogContext.Provider value={contextValue.current}>
      {children}
      {dialogs.map((dialog, i) => {
        const { ...dialogParams } = dialog;
        // const handleKill = () => {
        //     if (dialog.onExited) dialog.onExited();
        //     setDialogs((dialogs) => dialogs.slice(0, dialogs.length - 1));
        // };

        return (
          <Dialog
            key={i}
            // onKill={handleKill}
            {...dialogParams}
          />
        );
      })}
    </DialogContext.Provider>
  );
}
