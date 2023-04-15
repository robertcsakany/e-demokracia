//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: NavigateToPageAction

import { JudoIdentifiable } from '@judo/data-api-common';
import { useJudoNavigation } from '../../../../../../../components';
import {
  AdminVoteDefinitionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';

export type ButtonNavigateDebateAction = () => (
  owner: JudoIdentifiable<AdminVoteDefinition>,
  target: JudoIdentifiable<AdminDebate>,
) => Promise<void>;

export const useButtonNavigateDebateAction: ButtonNavigateDebateAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (owner: JudoIdentifiable<AdminVoteDefinition>, target: JudoIdentifiable<AdminDebate>) {
    /*const target = await adminVoteDefinitionServiceImpl.getDebate(owner, {
                    _mask: '{}',
                });*/
    navigate(`admin/vote_definition/debate/view/${target.__signedIdentifier}`);
  };
};
