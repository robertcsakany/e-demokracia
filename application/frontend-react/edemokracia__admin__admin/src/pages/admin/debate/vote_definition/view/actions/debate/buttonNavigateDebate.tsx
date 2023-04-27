//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: NavigateToPageAction

import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import { JudoIdentifiable } from '@judo/data-api-common';
import { useJudoNavigation } from '../../../../../../../components';
import {
  AdminVoteDefinitionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';

export const BUTTON_NAVIGATE_DEBATE_ACTION_INTERFACE_KEY = 'ButtonNavigateDebateAction';
export type ButtonNavigateDebateAction = () => (
  owner: JudoIdentifiable<AdminVoteDefinition>,
  target: JudoIdentifiable<AdminDebate>,
) => Promise<void>;

export const useButtonNavigateDebateAction: ButtonNavigateDebateAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<ButtonNavigateDebateAction>(
    `(${OBJECTCLASS}=${BUTTON_NAVIGATE_DEBATE_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminVoteDefinition>, target: JudoIdentifiable<AdminDebate>) {
    navigate(`admin/vote_definition/debate/view/${target.__signedIdentifier}`);
  };
};
