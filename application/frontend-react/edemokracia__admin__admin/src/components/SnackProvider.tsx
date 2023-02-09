import { createContext, useCallback, useContext, useRef, useState } from 'react';
import type { ReactNode, SyntheticEvent } from 'react';
import { Alert, Snackbar } from '@mui/material';
import type { SnackbarOrigin } from '@mui/material';

export interface SnackOptions extends Partial<SnackbarOrigin> {
  variant?: 'error' | 'warning' | 'info' | 'success';
  autoHideDuration?: number;
}

export type EnqueueSnackbarCallback = (message: string, options?: SnackOptions) => void;

type SnackProviderContext = readonly [EnqueueSnackbarCallback];

const EMPTY_FUNC = () => {};
const SnackContext = createContext<SnackProviderContext>([EMPTY_FUNC]);

export const useSnackbar = () => useContext(SnackContext);

export function SnackProvider({ children }: { children: ReactNode }) {
  const [snack, setSnack] = useState<{ message?: string; open: boolean; options: SnackOptions }>({
    open: false,
    options: {},
  });

  const openSnack = useCallback<EnqueueSnackbarCallback>(
    (message: string, options: SnackOptions = {}) => {
      setSnack({
        open: true,
        message: message,
        options: { ...options },
      });
    },
    [snack],
  );

  const closeSnack = useCallback(
    (event?: SyntheticEvent | Event, reason?: string) => {
      if (reason === 'clickaway') {
        return;
      }

      setSnack({
        open: false,
        message: undefined,
        options: { ...snack.options },
      });
    },
    [snack],
  );

  const contextValue = useRef([openSnack] as const);

  return (
    <SnackContext.Provider value={contextValue.current}>
      {children}
      <Snackbar
        open={snack.open}
        autoHideDuration={snack.options?.autoHideDuration}
        onClose={closeSnack}
        anchorOrigin={{
          vertical: snack.options?.vertical || 'bottom',
          horizontal: snack.options?.horizontal || 'left',
        }}
      >
        <Alert onClose={closeSnack} severity={snack.options?.variant || 'info'} sx={{ width: '100%' }}>
          {snack.message}
        </Alert>
      </Snackbar>
    </SnackContext.Provider>
  );
}
