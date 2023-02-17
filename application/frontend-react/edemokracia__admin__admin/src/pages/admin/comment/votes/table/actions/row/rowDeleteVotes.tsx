///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Comment::votes#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminComment,
  AdminSimpleVote,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminCommentServiceForVotesImpl, adminSimpleVoteServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteVotesAction = () => (
  owner: JudoIdentifiable<AdminComment>,
  selected: AdminSimpleVoteStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteVotesAction: RowDeleteVotesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteVotesAction(
    owner: JudoIdentifiable<AdminComment>,
    selected: AdminSimpleVoteStored,
    successCallback: () => void,
  ) {
    try {
      await adminCommentServiceForVotesImpl.deleteVotes(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
