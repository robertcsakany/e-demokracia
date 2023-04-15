//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/table/table-row-actions.tsx'
// Template name: actor/src/components/table/table-row-actions.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/components/table/table-row-actions.tsx.hbs

import { Button } from '@mui/material';
import { GridColDef, GridRenderCellParams } from '@mui/x-data-grid';
import type { ColumnActionsProvider, ColumnsActionsOptions, TableRowAction } from '../../utilities';
import { exists } from '../../utilities';
import { DropdownButton } from '../DropdownButton';
import { MdiIcon } from '../MdiIcon';
import { baseColumnConfig } from '../../config';

export const columnsActionCalculator: ColumnActionsProvider<any> = (
  id: string,
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
    return standaloneActions(id, actions, options);
  } else if (shownActionsNumber === 0) {
    return [];
  } else if (shownActionsNumber === 1) {
    return dropdownActions(id, actions);
  } else {
    const sliceNumber = actions.length === shownActionsNumber ? shownActionsNumber : shownActionsNumber - 1;
    const standaloneRowActions = actions.slice(0, sliceNumber);
    const dropdownRowActions = actions.slice(sliceNumber);

    return [...standaloneActions(id, standaloneRowActions, options), ...dropdownActions(id, dropdownRowActions)];
  }
};

const standaloneActions: ColumnActionsProvider<unknown> = (
  id: string,
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
          <Button
            id={id}
            variant="text"
            disabled={action.disabled ? action.disabled(params.row) : false}
            onClick={() => action.action(params.row)}
          >
            {action.icon}
            {(options?.showLabel ?? true) && action.label}
          </Button>
        );
      },
    };
  });
};

const dropdownActions: ColumnActionsProvider<unknown> = (
  id: string,
  actions: TableRowAction<unknown>[],
): GridColDef[] => {
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
            id={id}
            variant="text"
            showDropdownIcon={false}
            menuItems={actions.map((action) => {
              return {
                id: action.id,
                label: action.label,
                startIcon: action.icon,
                onClick: () => action.action(params.row),
                disabled: action.disabled ? action.disabled(params.row) : false,
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
