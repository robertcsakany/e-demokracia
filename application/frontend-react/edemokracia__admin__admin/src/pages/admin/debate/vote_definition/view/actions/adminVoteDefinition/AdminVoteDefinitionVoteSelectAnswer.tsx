//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: CallOperationAction
// Is Access: no
// Is Mapped: yes
// Is Static: no
// Input: yes
// InputParameterPage: yes
// OutputParameterPage: no

import { useTranslation } from 'react-i18next';
import { Button } from '@mui/material';
import { LoadingButton } from '@mui/lab';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridRowSelectionModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import { useSnackbar } from 'notistack';
import { useJudoNavigation, MdiIcon } from '../../../../../../../components';
import { useDialog, useRangeDialog } from '../../../../../../../components/dialog';
import { baseColumnConfig, toastConfig } from '../../../../../../../config';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import { useL10N } from '../../../../../../../l10n/l10n-context';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  serviceDateToUiDate,
  serviceTimeToUiTime,
} from '../../../../../../../utilities';
import {
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  SelectAnswerVoteSelectionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  SelectAnswerVoteSelectionMaskBuilder,
  SelectAnswerVoteSelection,
} from '../../../../../../../generated/data-api';
import { adminVoteDefinitionServiceImpl } from '../../../../../../../generated/data-axios';

export type AdminVoteDefinitionVoteSelectAnswerActionPostHandler = (ownerCallback: () => void) => Promise<void>;

export const ADMIN_VOTE_DEFINITION_VOTE_SELECT_ANSWER_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY =
  'AdminVoteDefinitionVoteSelectAnswerActionPostHandlerHook';
export type AdminVoteDefinitionVoteSelectAnswerActionPostHandlerHook =
  () => AdminVoteDefinitionVoteSelectAnswerActionPostHandler;

export type AdminVoteDefinitionVoteSelectAnswerAction = () => (
  owner: AdminVoteDefinitionStored,
  successCallback: () => void,
) => Promise<void>;

export const useAdminVoteDefinitionVoteSelectAnswerAction: AdminVoteDefinitionVoteSelectAnswerAction = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();
  const handleActionError = useErrorHandler<AdminVoteDefinition>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=AdminVoteDefinitionVoteSelectAnswerAction))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const { openRangeDialog } = useRangeDialog();
  const [createDialog, closeDialog] = useDialog();
  const { navigate } = useJudoNavigation();
  const title: string = t(
    'edemokracia.admin.Debate.voteDefinition.View.edemokracia.admin.VoteDefinition.voteSelectAnswer',
    { defaultValue: 'VoteSelectAnswer' },
  );
  const { service: customPostHandler } = useTrackService<AdminVoteDefinitionVoteSelectAnswerActionPostHandlerHook>(
    `(${OBJECTCLASS}=${ADMIN_VOTE_DEFINITION_VOTE_SELECT_ANSWER_ACTION_POST_HANDLER_HOOK_INTERFACE_KEY})`,
  );
  const postHandler: AdminVoteDefinitionVoteSelectAnswerActionPostHandler | undefined =
    customPostHandler && customPostHandler();

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
      if (postHandler) {
        postHandler(successCallback);
        return;
      }
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
