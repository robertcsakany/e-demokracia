///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/utilities/error-handling.ts'
// Template name: actor/src/utilities/error-handling.ts.hbs

import type { Dispatch, SetStateAction } from 'react';
import { exists } from './helper';
import type { SnackOptions, EnqueueSnackbarCallback } from '../components';

interface ErrorHandlingOption {
  duration?: number;
  setValidation?: Dispatch<SetStateAction<Map<string, string>>>;
}

interface ServerError {
  code: string;
  level: string;
  details: ServerErrorDetails;
  location: string;
}

interface ServerErrorDetails {
  feature: string;
}

interface ClientError {
  message: string;
}

export interface ValidationError {
  message: string;
  location: string;
}

export const errorHandling = (error: any, enqueueSnackbar: EnqueueSnackbarCallback, options?: ErrorHandlingOption) => {
  // Checking for negated "instance of AxiosError" yields compile errors for export problems
  if (!(error && typeof error.isAxiosError === 'boolean' && error.isAxiosError === true)) {
    generalErrorMessage(enqueueSnackbar);
    return;
  }

  const response = error.response;

  if (!exists(response)) {
    generalErrorMessage(enqueueSnackbar);
    return;
  }

  if (!response?.status) {
    generalErrorMessage(enqueueSnackbar);
    return;
  }

  if (response?.status === 422) {
    enqueueSnackbar(toClientError(error.response?.data as ServerError).message, {
      variant: 'error',
    });
  } else if (response?.status === 400) {
    return handleBadRequest(response.data as ServerError[], enqueueSnackbar, options);
  } else {
    enqueueSnackbar(toClientError(response?.data as ServerError).message, {
      variant: 'error',
    });
  }
};

const handleBadRequest = (
  errorList: ServerError[],
  enqueueSnackbar: EnqueueSnackbarCallback,
  options?: ErrorHandlingOption,
) => {
  if (exists(errorList[0].location)) {
    enqueueSnackbar('Please make sure all fields are filled in correctly.', {
      variant: 'error',
      autoHideDuration: options?.duration ?? undefined,
    });

    if (options?.setValidation !== undefined) {
      let validation = new Map<string, string>();
      errorList.forEach((error) => validation.set(error.location, error.code));
      options?.setValidation(validation);
    }
  } else {
    enqueueSnackbar(errorList[0].code, {
      variant: 'error',
      autoHideDuration: options?.duration ?? undefined,
    });
  }
};

const generalErrorMessage = (enqueueSnackbar: EnqueueSnackbarCallback) => {
  enqueueSnackbar('Something went wrong. Please contact with the system admins.', {
    variant: 'error',
  });
};

const toClientError = (error: ServerError): ClientError => {
  return {
    message: error.code,
  };
};
