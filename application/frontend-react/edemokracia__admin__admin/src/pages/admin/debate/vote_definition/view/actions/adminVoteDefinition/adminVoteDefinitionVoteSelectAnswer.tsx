///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::VoteDefinition::voteSelectAnswer#ButtonCallOperation
// Action owner name: edemokracia::admin::Debate.voteDefinition#View
// Action DataElement name: voteSelectAnswer
// Action DataElement owner name: edemokracia::admin::VoteDefinition
// Action DataElement target name:
// Owner Page name: edemokracia::admin::Debate.voteDefinition#View
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type { GridColDef, GridRenderCellParams, GridRowParams, GridSortModel } from '@mui/x-data-grid';
import { useDialog, useSnackbar, useRangeDialog, useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { baseColumnConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { errorHandling, fileHandling, processQueryCustomizer } from '../../../../../../../utilities';
import {
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionStored,
  SelectAnswerVoteSelectionStored,
  SelectAnswerVoteSelectionMaskBuilder,
  SelectAnswerVoteSelection,
} from '../../../../../../../generated/data-api';
import { adminVoteDefinitionServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminVoteDefinitionVoteSelectAnswerAction = () => (
  owner: AdminVoteDefinitionStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminVoteDefinitionVoteSelectAnswerAction: AdminVoteDefinitionVoteSelectAnswerAction = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();
  const [enqueueSnackbar] = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t(
    'edemokracia.admin.Debate.voteDefinition.View.edemokracia.admin.VoteDefinition.voteSelectAnswer',
    { defaultValue: 'VoteSelectAnswer' },
  );

  // TODO: implement mapped input selection

  return async function adminVoteDefinitionVoteSelectAnswerAction(
    owner: AdminVoteDefinitionStored,
    successCallback: () => void,
  ) {
    const columns: GridColDef<SelectAnswerVoteSelectionStored>[] = [
      {
        ...baseColumnConfig,
        field: 'title',
        headerName: t('edemokracia.admin.VoteDefinition.voteSelectAnswer.InputvoteSelectAnswer.Entity.Table.title', {
          defaultValue: 'Title',
        }) as string,
        width: 230,
        type: 'string',
      },
      {
        ...baseColumnConfig,
        field: 'description',
        headerName: t(
          'edemokracia.admin.VoteDefinition.voteSelectAnswer.InputvoteSelectAnswer.Entity.Table.description',
          { defaultValue: 'Description' },
        ) as string,
        width: 230,
        type: 'string',
      },
    ];

    const filterOptions: FilterOption[] = [
      {
        attributeName: 'title',
        filterType: FilterType.string,
      },
      {
        attributeName: 'description',
        filterType: FilterType.string,
      },
    ];

    const sortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

    const initialQueryCustomizer: SelectAnswerVoteSelectionQueryCustomizer = {
      _mask: '{title,description}',
      _orderBy: sortModel.length
        ? [
            {
              attribute: sortModel[0].field,
              descending: sortModel[0].sort === 'desc',
            },
          ]
        : [],
    };

    const res = await openRangeDialog<SelectAnswerVoteSelectionStored, SelectAnswerVoteSelectionQueryCustomizer>({
      columns,
      defaultSortField: sortModel[0],
      rangeCall: async (queryCustomizer) =>
        await adminVoteDefinitionServiceImpl.getRangeForVoteSelectAnswer(
          owner,
          processQueryCustomizer(queryCustomizer),
        ),
      single: true,
      alreadySelectedItems: '', // TODO: ???
      filterOptions,
      initialQueryCustomizer,
    });

    if (res === undefined) return;

    try {
      const result = await adminVoteDefinitionServiceImpl.voteSelectAnswer(
        owner,
        res as SelectAnswerVoteSelectionStored,
      );
      successCallback();
      enqueueSnackbar(title, {
        variant: 'success',
        autoHideDuration: 3000,
      });
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }

    // TODO: implement output handling
  };
};
