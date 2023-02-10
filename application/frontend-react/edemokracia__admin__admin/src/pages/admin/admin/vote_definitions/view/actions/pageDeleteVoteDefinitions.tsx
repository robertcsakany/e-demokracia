///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::voteDefinitions#PageDelete
// Action owner name: edemokracia::admin::Admin.voteDefinitions#View
// Action DataElement name: voteDefinitions
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::VoteDefinition
// Owner Page name: edemokracia::admin::Admin.voteDefinitions#View
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteDefinition,
} from '../../../../../../generated/data-api';
import {
  adminAdminServiceForVoteDefinitionsImpl,
  adminVoteDefinitionServiceImpl,
} from '../../../../../../generated/data-axios';

export type PageDeleteVoteDefinitionsAction = () => (
  selected: AdminVoteDefinitionStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteVoteDefinitionsAction: PageDeleteVoteDefinitionsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteVoteDefinitionsAction(
    selected: AdminVoteDefinitionStored,
    successCallback: () => void,
  ) {
    try {
      await adminVoteDefinitionServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
