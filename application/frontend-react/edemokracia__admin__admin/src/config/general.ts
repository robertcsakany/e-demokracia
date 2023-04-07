import type { OptionsObject } from 'notistack';

export const generalToastConfig: OptionsObject = {
  variant: 'default',
  anchorOrigin: {
    vertical: 'bottom',
    horizontal: 'center',
  },
};

export const toastConfig: OptionsObject & { success: OptionsObject; error: OptionsObject } = {
  ...generalToastConfig,
  success: {
    ...generalToastConfig,
    autoHideDuration: 5000,
    variant: 'success',
  },
  error: {
    ...generalToastConfig,
    persist: true,
    variant: 'error',
  },
};
