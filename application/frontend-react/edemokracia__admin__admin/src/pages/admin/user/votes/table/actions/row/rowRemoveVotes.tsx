///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::votes#RowRemove
// Action: RemoveAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
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
  const [enqueueSnackbar] = useSnackbar();

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
      errorHandling(error, enqueueSnackbar);
    }
  };
};
