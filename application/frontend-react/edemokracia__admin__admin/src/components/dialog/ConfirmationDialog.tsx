///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/components/dialog/ConfirmationDialog.tsx'
// Template name: actor/src/components/dialog/ConfirmationDialog.tsx.hbs

import { Dialog, DialogTitle, DialogContent, DialogContentText, DialogActions, Button } from '@mui/material';
import { useEffect, useRef } from 'react';
import { useTranslation } from 'react-i18next';
import type { ConfirmationDialogProps } from '../../components-api';

export const ConfirmationDialog = ({
  confirmationMessage,
  title,
  resolve,
  open,
  handleClose,
}: ConfirmationDialogProps) => {
  const { t } = useTranslation();
  const descriptionElementRef = useRef<HTMLElement>(null);
  useEffect(() => {
    if (open) {
      const { current: descriptionElement } = descriptionElementRef;
      if (descriptionElement !== null) {
        descriptionElement.focus();
      }
    }
  }, [open]);

  const cancel = () => {
    handleClose();
    resolve(false);
  };

  const ok = () => {
    handleClose();
    resolve(true);
  };

  return (
    <Dialog open={open} onClose={handleClose} scroll="paper" fullWidth={true} maxWidth={'xs'}>
      {title && <DialogTitle id="scroll-dialog-title">{title}</DialogTitle>}
      <DialogContent dividers={!!title}>
        <DialogContentText id="scroll-dialog-description" ref={descriptionElementRef} tabIndex={-1}>
          {confirmationMessage}
        </DialogContentText>
      </DialogContent>
      <DialogActions>
        <Button variant="text" onClick={cancel}>
          {t('judo.modal.confirm.cancel', { defaultValue: 'No' }) as string}
        </Button>
        <Button variant="contained" onClick={ok}>
          {t('judo.modal.confirm.confirm', { defaultValue: 'Yes' }) as string}
        </Button>
      </DialogActions>
    </Dialog>
  );
};
