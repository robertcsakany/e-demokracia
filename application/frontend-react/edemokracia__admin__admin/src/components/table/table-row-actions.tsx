///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components/table/table-row-actions.tsx'
// Template name: actor/src/components/table/table-row-actions.tsx.hbs

import { Button } from '@mui/material';
import { GridColDef, GridRenderCellParams } from '@mui/x-data-grid';
import type { ColumnActionsProvider, ColumnsActionsOptions, TableRowAction } from '../../utilities';
import { exists } from '../../utilities';
import { DropdownButton } from '../DropdownButton';
import { MdiIcon } from '../MdiIcon';
import { baseColumnConfig } from '../../config';

export const columnsActionCalculator: ColumnActionsProvider<any> = (
  actions: TableRowAction<any>[],
  options?: ColumnsActionsOptions,
): GridColDef[] => {
  if (!exists(actions) || actions.length === 0) {
    return [];
  }

  let shownActionsNumber = 1;
  if (options?.shownActions) {
    shownActionsNumber = actions.length < options.shownActions ? actions.length : options.shownActions;
  }

  if (shownActionsNumber < 0) {
    return standaloneActions(actions, options);
  } else if (shownActionsNumber === 0) {
    return [];
  } else if (shownActionsNumber === 1) {
    return dropdownActions(actions, options);
  } else {
    const sliceNumber = actions.length === shownActionsNumber ? shownActionsNumber : shownActionsNumber - 1;
    const standaloneRowActions = actions.slice(0, sliceNumber);
    const dropdownRowActions = actions.slice(sliceNumber);

    return [...standaloneActions(standaloneRowActions, options), ...dropdownActions(dropdownRowActions, options)];
  }
};

const standaloneActions: ColumnActionsProvider<unknown> = (
  actions: TableRowAction<unknown>[],
  options?: ColumnsActionsOptions,
): GridColDef[] => {
  return actions.map((action, index) => {
    return {
      ...baseColumnConfig,
      field: action.label + index,
      headerName: '',
      align: 'center',
      type: 'actions',
      renderCell: (params: GridRenderCellParams) => {
        return (
          <Button variant="text" onClick={() => action.action(params.row)}>
            {action.icon}
            {(options?.showLabel ?? true) && action.label}
          </Button>
        );
      },
    };
  });
};

const dropdownActions: ColumnActionsProvider<unknown> = (actions: TableRowAction<unknown>[]): GridColDef[] => {
  if (actions.length === 0) return [];

  return [
    {
      ...baseColumnConfig,
      field: 'actions',
      headerName: '',
      align: 'center',
      type: 'actions',
      renderCell: (params: GridRenderCellParams) => {
        return (
          <DropdownButton
            variant="text"
            showDropdownIcon={false}
            menuItems={actions.map((action) => {
              return {
                label: action.label,
                startIcon: action.icon,
                onClick: () => action.action(params.row),
              };
            })}
          >
            <MdiIcon path="dots-horizontal" />
          </DropdownButton>
        );
      },
    },
  ];
};
