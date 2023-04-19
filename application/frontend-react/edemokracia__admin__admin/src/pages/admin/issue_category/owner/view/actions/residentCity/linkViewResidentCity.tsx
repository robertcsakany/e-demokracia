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
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminUser,
  AdminCityStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const LINK_VIEW_RESIDENT_CITY_ACTION_INTERFACE_KEY = 'LinkViewResidentCityAction';
export type LinkViewResidentCityAction = () => (
  owner: JudoIdentifiable<AdminUser>,
  entry: AdminCityStored,
) => Promise<void>;

export const useLinkViewResidentCityAction: LinkViewResidentCityAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<LinkViewResidentCityAction>(
    `(${OBJECTCLASS}=${LINK_VIEW_RESIDENT_CITY_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminUser>, entry: AdminCityStored) {
    navigate(`admin/user/resident_city/view/${entry.__signedIdentifier}`);
  };
};
