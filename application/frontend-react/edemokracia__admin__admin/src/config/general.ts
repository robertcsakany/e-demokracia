import { SnackOptions } from '../components';

export const generalToastConfig: SnackOptions = {
  vertical: 'bottom',
  horizontal: 'center',
};

export const toastConfig: SnackOptions & { success: SnackOptions; error: SnackOptions } = {
  ...generalToastConfig,
  success: {
    ...generalToastConfig,
    autoHideDuration: 5000,
  },
  error: {
    ...generalToastConfig,
  },
};
