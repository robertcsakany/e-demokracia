//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: ViewAction

import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const LINK_VIEW_VOTE_DEFINITION_ACTION_INTERFACE_KEY = 'LinkViewVoteDefinitionAction';
export type LinkViewVoteDefinitionAction = () => (
  owner: JudoIdentifiable<AdminDebate>,
  entry: AdminVoteDefinitionStored,
) => Promise<void>;

export const useLinkViewVoteDefinitionAction: LinkViewVoteDefinitionAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<LinkViewVoteDefinitionAction>(
    `(${OBJECTCLASS}=${LINK_VIEW_VOTE_DEFINITION_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminDebate>, entry: AdminVoteDefinitionStored) {
    navigate(`admin/debate/vote_definition/view/${entry.__signedIdentifier}`);
  };
};
