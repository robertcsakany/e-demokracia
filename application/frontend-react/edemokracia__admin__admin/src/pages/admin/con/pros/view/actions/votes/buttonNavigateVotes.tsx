///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::votes#ButtonNavigate
// Action: NavigateToPageAction

import { useJudoNavigation } from '../../../../../../../components';
import {
  AdminProStored,
  AdminPro,
  AdminSimpleVote,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type ButtonNavigateVotesAction = () => (owner: AdminProStored) => Promise<void>;

export const useButtonNavigateVotesAction: ButtonNavigateVotesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (owner: AdminProStored) {
    navigate(`admin/pro/votes/table/${owner.__signedIdentifier}`);
  };
};
