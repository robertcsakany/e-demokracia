//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CallOperationAction
// Is Access: yes
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridSelectionModel,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { useDialog, useRangeDialog } from '../../../../../../../components/dialog';
import { baseColumnConfig, toastConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
} from '../../../../../../../utilities';
import {
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  SelectAnswerVoteSelectionStored,
  AdminVoteDefinition,
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
  const handleActionError = useErrorHandler<AdminVoteDefinitionStored>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminVoteDefinitionVoteSelectAnswerAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t(
    'edemokracia.admin.Admin.voteDefinitions.View.edemokracia.admin.VoteDefinition.voteSelectAnswer',
    { defaultValue: 'VoteSelectAnswer' },
  );

  return async function AdminVoteDefinitionVoteSelectAnswerAction(
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
        id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteSelectAnswerInputTableDefaultVoteSelectAnswerEntityTableTitleFilter',
        attributeName: 'title',
        label: t('edemokracia.admin.VoteDefinition.voteSelectAnswer.InputvoteSelectAnswer.Entity.Table.title.Filter', {
          defaultValue: 'Title',
        }) as string,
        filterType: FilterType.string,
      },
      {
        id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteSelectAnswerInputTableDefaultVoteSelectAnswerEntityTableDescriptionFilter',
        attributeName: 'description',
        label: t(
          'edemokracia.admin.VoteDefinition.voteSelectAnswer.InputvoteSelectAnswer.Entity.Table.description.Filter',
          { defaultValue: 'Description' },
        ) as string,
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
      id: 'PageDefinitionedemokraciaAdminAdminEdemokraciaAdminVoteDefinitionVoteSelectAnswerInputTable',
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
        ...toastConfig.success,
      });
    } catch (error) {
      handleActionError(error, undefined, owner);
    }
  };
};
