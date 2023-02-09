///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::VoteDefinition::debate#ButtonNavigate
// Action owner name: edemokracia::admin::Admin.voteDefinitions#View
// Action DataElement name: debate
// Action DataElement owner name: edemokracia::admin::VoteDefinition
// Action DataElement target name: edemokracia::admin::Debate
// Owner Page name: edemokracia::admin::Admin.voteDefinitions#View
// Action: NavigateToPageAction

import { useJudoNavigation } from '../../../../../../../components';
import {
  AdminVoteDefinitionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminVoteDefinitionServiceImpl } from '../../../../../../../generated/data-axios';

export type ButtonNavigateDebateAction = () => (owner: AdminVoteDefinitionStored) => Promise<void>;

export const useButtonNavigateDebateAction: ButtonNavigateDebateAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (owner: AdminVoteDefinitionStored) {
    const target = await adminVoteDefinitionServiceImpl.getDebate(owner, {
      _mask: '{}',
    });
    navigate(`admin/vote_definition/debate/view/${target.__signedIdentifier}`);
  };
};
