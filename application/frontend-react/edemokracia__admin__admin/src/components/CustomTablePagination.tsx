///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/components/CustomTablePagination.tsx'
// Template name: actor/src/components/CustomTablePagination.tsx.hbs

import { TablePagination } from '@mui/material';
import type { MouseEvent, Dispatch, SetStateAction } from 'react';

export interface CustomTablePaginationProps {
  pageChange: (isNext: boolean) => Promise<void>;
  isNextButtonEnabled: boolean;
  page: number;
  rowPerPage: number;
  setPage: Dispatch<SetStateAction<number>>;
}

export const CustomTablePagination = (props: CustomTablePaginationProps) => {
  const handleChangePage = async (event: MouseEvent<HTMLButtonElement> | null, newPage: number) => {
    let isNext = true;
    if (newPage < props.page) {
      isNext = false;
    }

    props.setPage(newPage);

    await props.pageChange(isNext);
  };

  return (
    <TablePagination
      component="div"
      count={-1}
      page={props.page}
      onPageChange={handleChangePage}
      rowsPerPage={props.rowPerPage}
      rowsPerPageOptions={[props.rowPerPage]}
      labelDisplayedRows={({ from, to }) => `${from}–${to}`}
      nextIconButtonProps={{
        disabled: !props.isNextButtonEnabled,
      }}
      backIconButtonProps={{
        disabled: props.page === 0,
      }}
    />
  );
};
