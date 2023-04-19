//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: ViewAction

import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminDebate,
  AdminDebateStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../components';

export const ROW_VIEW_DEBATES_ACTION_INTERFACE_KEY = 'RowViewDebatesAction';
export type RowViewDebatesAction = () => (
  owner: JudoIdentifiable<AdminDashboard>,
  entry: AdminDebateStored,
) => Promise<void>;

export const useRowViewDebatesAction: RowViewDebatesAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<RowViewDebatesAction>(
    `(${OBJECTCLASS}=${ROW_VIEW_DEBATES_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminDashboard>, entry: AdminDebateStored) {
    navigate(`admin/dashboard/debates/view/${entry.__signedIdentifier}`);
  };
};
