//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: RemoveAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../../utilities';
import {
  AdminUserStored,
  AdminSimpleVote,
  AdminUser,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminUserServiceImpl } from '../../../../../../../generated/data-axios';

export type RowRemoveVotesAction = () => (
  owner: JudoIdentifiable<AdminUser>,
  selected: AdminSimpleVoteStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowRemoveVotesAction: RowRemoveVotesAction = () => {
  const { enqueueSnackbar } = useSnackbar();
  const handleActionError = useErrorHandler<JudoIdentifiable<AdminUser>>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowRemoveAction))`,
  );

  return async function rowRemoveVotesAction(
    owner: JudoIdentifiable<AdminUser>,
    selected: AdminSimpleVoteStored,
    successCallback: () => void,
  ) {
    try {
      await adminUserServiceImpl.removeVotes(
        { __signedIdentifier: owner.__signedIdentifier } as JudoIdentifiable<AdminUser>,
        [selected],
      );

      successCallback();
    } catch (error) {
      handleActionError(error);
    }
  };
};
