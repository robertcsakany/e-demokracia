///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components/dialog/hooks.tsx'
// Template name: actor/src/components/dialog/hooks.tsx.hbs

import { createContext, useContext } from 'react';
import {
  ConfirmDialogProviderContext,
  FilterDialogProviderContext,
  PageDialogProviderContext,
  RangeDialogProviderContext,
} from '../../components-api';

// @ts-ignore
export const PageDialogContextState = createContext<PageDialogProviderContext>();

// @ts-ignore
export const ConfirmDialogContextState = createContext<ConfirmDialogProviderContext>();

// @ts-ignore
export const RangeDialogContextState = createContext<RangeDialogProviderContext>();

// @ts-ignore
export const FilterDialogContextState = createContext<FilterDialogProviderContext>();

export const useFilterDialog = () => {
  const context = useContext(FilterDialogContextState);

  if (context === undefined) {
    throw new Error('useFilterDialog was used outside of its Provider');
  }

  return context;
};

export const usePageDialog = () => {
  const context = useContext(PageDialogContextState);

  if (context === undefined) {
    throw new Error('useConfirmDialog was used outside of its Provider');
  }

  return context;
};

export const useConfirmDialog = () => {
  const context = useContext(ConfirmDialogContextState);

  if (context === undefined) {
    throw new Error('useConfirmDialog was used outside of its Provider');
  }

  return context;
};

export const useRangeDialog = () => {
  const context = useContext(RangeDialogContextState);

  if (context === undefined) {
    throw new Error('useRangeDialog was used outside of its Provider');
  }

  return context;
};
