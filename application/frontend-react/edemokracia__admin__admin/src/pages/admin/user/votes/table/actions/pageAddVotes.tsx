///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::votes#PageAdd
// Action: AddAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useTranslation } from 'react-i18next';
import { GridColDef, GridRenderCellParams, GridSortModel } from '@mui/x-data-grid';
import { useRangeDialog, useSnackbar, MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { errorHandling, processQueryCustomizer } from '../../../../../../utilities';
import {
  AdminUserStored,
  AdminSimpleVote,
  AdminUser,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../generated/data-api';
import { adminUserServiceImpl } from '../../../../../../generated/data-axios';

export type PageAddVotesAction = () => (
  owner: JudoIdentifiable<AdminUser>,
  successCallback: () => void,
) => Promise<void>;

export const usePageAddVotesAction: PageAddVotesAction = () => {
  const { openRangeDialog } = useRangeDialog();
  const { t } = useTranslation();
  const [enqueueSnackbar] = useSnackbar();
  const title: string = t('edemokracia.admin.User.votes.Table.edemokracia.admin.User.votes.PageAdd', {
    defaultValue: 'Add',
  });

  return async function pageAddVotesAction(owner: JudoIdentifiable<AdminUser>, successCallback: () => void) {
    const columns: GridColDef<AdminSimpleVoteStored>[] = [
      {
        ...baseColumnConfig,
        field: 'created',
        headerName: t('edemokracia.admin.User.votes.votes.Votes.List.created', { defaultValue: 'Created' }) as string,
        width: 170,
        type: 'dateTime',
      },
      {
        ...baseColumnConfig,
        field: 'type',
        headerName: t('edemokracia.admin.User.votes.votes.Votes.List.type', { defaultValue: 'Type' }) as string,
        width: 170,
        type: 'string',
        sortable: false,
        description: t('judo.pages.table.column.not-sortable', {
          defaultValue: 'This column is not sortable.',
        }) as string,
      },
    ];

    const filterOptions: FilterOption[] = [
      {
        attributeName: 'created',
        label: t('edemokracia.admin.User.votes.votes.Votes.List.created.Filter', { defaultValue: 'Created' }) as string,
        filterType: FilterType.dateTime,
      },
      {
        attributeName: 'type',
        label: t('edemokracia.admin.User.votes.votes.Votes.List.type.Filter', { defaultValue: 'Type' }) as string,
        filterType: FilterType.enumeration,
        enumValues: ['UP', 'DOWN'],
      },
    ];

    const sortModel: GridSortModel = [{ field: 'created', sort: 'asc' }];

    const initialQueryCustomizer: AdminSimpleVoteQueryCustomizer = {
      _mask: '{created,type}',
      _orderBy: sortModel.length
        ? [
            {
              attribute: sortModel[0].field,
              descending: sortModel[0].sort === 'desc',
            },
          ]
        : [],
    };

    const res = await openRangeDialog<AdminSimpleVoteStored, AdminSimpleVoteQueryCustomizer>({
      columns,
      defaultSortField: sortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminUserServiceImpl.getRangeForVotes(owner, processQueryCustomizer(queryCustomizer)),
      single: false,
      alreadySelectedItems: '',
      filterOptions,
      initialQueryCustomizer,
    });

    if (res === undefined) return;

    try {
      await adminUserServiceImpl.addVotes(
        { __signedIdentifier: owner.__signedIdentifier } as JudoIdentifiable<AdminSimpleVoteStored>,
        res as Array<AdminSimpleVoteStored>,
      );

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
