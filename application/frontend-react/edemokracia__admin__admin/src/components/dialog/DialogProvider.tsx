//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/dialog/DialogProvider.tsx'
// Template name: actor/src/components/dialog/DialogProvider.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/components/dialog/DialogProvider.tsx.hbs

import { useState } from 'react';
import type { ReactNode } from 'react';
import { ConfirmationDialog } from './ConfirmationDialog';
import { FilterDialog } from './FilterDialog';
import { PageDialog } from './PageDialog';
import { RangeDialog } from './RangeDialog';
import type {
  ConfirmDialogProviderContext,
  DialogProviderProps,
  FilterDialogProviderContext,
  OpenRangeDialogProps,
  PageDialogProviderContext,
  RangeDialogProviderContext,
} from '../../components-api';
import type { Filter, FilterOption } from '../../components-api';
import type { JudoStored, QueryCustomizer } from '@judo/data-api-common';
import {
  ConfirmDialogContextState,
  FilterDialogContextState,
  PageDialogContextState,
  RangeDialogContextState,
} from './hooks';

export const DialogProvider = ({ children }: DialogProviderProps) => {
  // Page Dialog
  const [isOpenPageDialog, setIsOpenPageDialog] = useState(false);
  const [pageDialog, setPageDialog] = useState<ReactNode>();

  const handleClosePageDialog = () => {
    setIsOpenPageDialog(false);
  };

  const handleOpenPageDialog = async (page: ReactNode) => {
    setIsOpenPageDialog(true);
    return new Promise<void>((resolve) => {
      setPageDialog(<PageDialog page={page} handleClose={handleClosePageDialog} open={true} resolve={resolve} />);
    });
  };

  const pageDialogContext: PageDialogProviderContext = {
    openPageDialog: handleOpenPageDialog,
  };

  // Range Dialog
  const [isOpenRangeDialog, setIsOpenRangeDialog] = useState(false);
  const [rangeDialog, setRangeDialog] = useState<ReactNode>();

  const handleCloseRangeDialog = () => {
    setIsOpenRangeDialog(false);
  };

  const handleOpenRangeDialog = async <T extends JudoStored<T>, U extends QueryCustomizer<T>>({
    id,
    columns,
    defaultSortField,
    rangeCall,
    single = false,
    alreadySelectedItems,
    filterOptions,
    initialQueryCustomizer,
  }: OpenRangeDialogProps<T, U>) => {
    setIsOpenRangeDialog(true);

    return new Promise<T[] | T>((resolve) => {
      setRangeDialog(
        <RangeDialog<T, U>
          id={id}
          handleClose={handleCloseRangeDialog}
          open={true}
          resolve={resolve}
          columns={columns}
          defaultSortField={defaultSortField}
          rangeCall={rangeCall}
          single={single}
          alreadySelectedItems={alreadySelectedItems}
          filterOptions={filterOptions}
          initalQueryCustomizer={initialQueryCustomizer}
        />,
      );
    });
  };

  const customDialogContext: RangeDialogProviderContext = {
    openRangeDialog: handleOpenRangeDialog,
  };

  // Confirmation Dialog
  const [isOpenConfirmDialog, setIsOpenConfirmDialog] = useState(false);
  const [confirmDialog, setConfirmDialog] = useState<ReactNode>();

  const handleCloseConfirmDialog = () => {
    setIsOpenConfirmDialog(false);
    return false;
  };

  const handleOpenConfirmDialog = async (
    id: string,
    confirmationMessage: string | ReactNode,
    title?: string | ReactNode,
  ) => {
    setIsOpenConfirmDialog(true);

    return new Promise<boolean>((resolve) => {
      setConfirmDialog(
        <ConfirmationDialog
          id={id}
          confirmationMessage={confirmationMessage}
          title={title}
          handleClose={handleCloseConfirmDialog}
          open={true}
          resolve={resolve}
        />,
      );
    });
  };

  const confirmDialogContext: ConfirmDialogProviderContext = {
    openConfirmDialog: handleOpenConfirmDialog,
  };

  // Filter dialog
  const [isOpenFilterDialog, setIsOpenFilterDialog] = useState(false);
  const [filterDialog, setFilterDialog] = useState<ReactNode>();

  const handleCloseFilterDialog = () => {
    setIsOpenFilterDialog(false);
    return false;
  };

  const handleOpenFilterDialog = async (id: string, filterOptions: FilterOption[], filters?: Filter[]) => {
    setIsOpenFilterDialog(true);

    return new Promise<Filter[]>((resolve) => {
      setFilterDialog(
        <FilterDialog
          id={id}
          filters={filters}
          filterOptions={filterOptions}
          handleClose={handleCloseFilterDialog}
          open={true}
          resolve={resolve}
        />,
      );
    });
  };

  const filterDialogContext: FilterDialogProviderContext = {
    openFilterDialog: handleOpenFilterDialog,
  };

  return (
    <PageDialogContextState.Provider value={pageDialogContext}>
      <ConfirmDialogContextState.Provider value={confirmDialogContext}>
        <RangeDialogContextState.Provider value={customDialogContext}>
          <FilterDialogContextState.Provider value={filterDialogContext}>
            {children}
            {isOpenPageDialog && pageDialog}
            {isOpenConfirmDialog && confirmDialog}
            {isOpenRangeDialog && rangeDialog}
            {isOpenFilterDialog && filterDialog}
          </FilterDialogContextState.Provider>
        </RangeDialogContextState.Provider>
      </ConfirmDialogContextState.Provider>
    </PageDialogContextState.Provider>
  );
};
