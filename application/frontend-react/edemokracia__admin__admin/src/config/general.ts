//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/config/general.ts'
// Template name: actor/src/config/general.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/config/general.ts.hbs

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
