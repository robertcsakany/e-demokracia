///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::votes#ButtonNavigate
// Action owner name: edemokracia::admin::Debate.createdBy#View
// Action DataElement name: votes
// Action DataElement owner name: edemokracia::admin::User
// Action DataElement target name: edemokracia::admin::SimpleVote
// Owner Page name: edemokracia::admin::Debate.createdBy#View
// Action: NavigateToPageAction

import { useJudoNavigation } from '../../../../../../../components';
import {
  AdminUserStored,
  AdminSimpleVote,
  AdminUser,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type ButtonNavigateVotesAction = () => (owner: AdminUserStored) => Promise<void>;

export const useButtonNavigateVotesAction: ButtonNavigateVotesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (owner: AdminUserStored) {
    navigate(`admin/user/votes/table/${owner.__signedIdentifier}`);
  };
};
