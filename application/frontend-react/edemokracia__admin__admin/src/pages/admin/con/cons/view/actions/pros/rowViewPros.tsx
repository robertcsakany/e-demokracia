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
  AdminProStored,
  AdminProQueryCustomizer,
  AdminCon,
  AdminConStored,
  AdminPro,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const ROW_VIEW_PROS_ACTION_INTERFACE_KEY = 'RowViewProsAction';
export type RowViewProsAction = () => (owner: JudoIdentifiable<AdminCon>, entry: AdminProStored) => Promise<void>;

export const useRowViewProsAction: RowViewProsAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<RowViewProsAction>(
    `(${OBJECTCLASS}=${ROW_VIEW_PROS_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminCon>, entry: AdminProStored) {
    navigate(`admin/con/pros/view/${entry.__signedIdentifier}`);
  };
};
