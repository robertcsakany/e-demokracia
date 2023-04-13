//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type { AdminProStored, AdminProQueryCustomizer, AdminPro } from '../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../components';

export type RowViewProsAction = () => (entry: JudoIdentifiable<AdminPro>) => Promise<void>;

export const useRowViewProsAction: RowViewProsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminPro>) {
    navigate(`admin/pro/pros/view/${entry.__signedIdentifier}`);
  };
};
