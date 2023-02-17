///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Comment::votes#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminComment,
  AdminSimpleVote,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewVotesAction = () => (entry: JudoIdentifiable<AdminSimpleVote>) => Promise<void>;

export const useRowViewVotesAction: RowViewVotesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminSimpleVote>) {
    navigate(`admin/comment/votes/view/${entry.__signedIdentifier}`);
  };
};
