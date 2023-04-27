//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/dialog/hooks.tsx'
// Template name: actor/src/components/dialog/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/components/dialog/hooks.tsx.hbs

import { createContext, useContext } from 'react';
import {
  ConfirmDialogProviderContext,
  FilterDialogProviderContext,
  PageDialogProviderContext,
  RangeDialogProviderContext,
} from '../../components-api';

export const PageDialogContextState = createContext<PageDialogProviderContext>(undefined as any);

export const ConfirmDialogContextState = createContext<ConfirmDialogProviderContext>(undefined as any);

export const RangeDialogContextState = createContext<RangeDialogProviderContext>(undefined as any);

export const FilterDialogContextState = createContext<FilterDialogProviderContext>(undefined as any);

export const useFilterDialog = () => {
  const context = useContext(FilterDialogContextState);

  if (context === undefined) {
    throw new Error('useFilterDialog was used outside its Provider');
  }

  return context;
};

export const usePageDialog = () => {
  const context = useContext(PageDialogContextState);

  if (context === undefined) {
    throw new Error('useConfirmDialog was used outside its Provider');
  }

  return context;
};

export const useConfirmDialog = () => {
  const context = useContext(ConfirmDialogContextState);

  if (context === undefined) {
    throw new Error('useConfirmDialog was used outside its Provider');
  }

  return context;
};

export const useRangeDialog = () => {
  const context = useContext(RangeDialogContextState);

  if (context === undefined) {
    throw new Error('useRangeDialog was used outside its Provider');
  }

  return context;
};
