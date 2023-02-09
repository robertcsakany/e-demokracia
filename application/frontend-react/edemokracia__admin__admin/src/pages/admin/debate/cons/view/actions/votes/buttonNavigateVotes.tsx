///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::votes#ButtonNavigate
// Action owner name: edemokracia::admin::Debate.cons#View
// Action DataElement name: votes
// Action DataElement owner name: edemokracia::admin::Con
// Action DataElement target name: edemokracia::admin::SimpleVote
// Owner Page name: edemokracia::admin::Debate.cons#View
// Action: NavigateToPageAction

import { useJudoNavigation } from '../../../../../../../components';
import {
  AdminCon,
  AdminConStored,
  AdminSimpleVote,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type ButtonNavigateVotesAction = () => (owner: AdminConStored) => Promise<void>;

export const useButtonNavigateVotesAction: ButtonNavigateVotesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (owner: AdminConStored) {
    navigate(`admin/con/votes/table/${owner.__signedIdentifier}`);
  };
};
