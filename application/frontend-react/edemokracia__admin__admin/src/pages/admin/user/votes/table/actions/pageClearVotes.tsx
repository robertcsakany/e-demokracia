///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::votes#PageClear
// Action owner name: edemokracia::admin::User.votes#Table
// Action DataElement name: votes
// Action DataElement owner name: edemokracia::admin::User
// Action DataElement target name: edemokracia::admin::SimpleVote
// Owner Page name: edemokracia::admin::User.votes#Table
// Action: ClearAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import { AdminUser } from '../../../../../../generated/data-api';
import { adminUserServiceImpl } from '../../../../../../generated/data-axios';

export type PageClearVotesAction = () => (
  owner: JudoIdentifiable<AdminUser>,
  successCallback: () => void,
) => Promise<void>;

export const usePageClearVotesAction: PageClearVotesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageClearVotesAction(owner: JudoIdentifiable<AdminUser>, successCallback: () => void) {
    try {
      await adminUserServiceImpl.setVotes(
        { __signedIdentifier: owner.__signedIdentifier } as JudoIdentifiable<AdminUser>,
        [],
      );

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
