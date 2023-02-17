///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::voteDefinition#LinkView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewVoteDefinitionAction = () => (entry: JudoIdentifiable<AdminVoteDefinition>) => Promise<void>;

export const useLinkViewVoteDefinitionAction: LinkViewVoteDefinitionAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminVoteDefinition>) {
    navigate(`admin/debate/vote_definition/view/${entry.__signedIdentifier}`);
  };
};
