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
  AdminUserStored,
  AdminCountyQueryCustomizer,
  AdminUser,
  AdminCounty,
  AdminCountyStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const LINK_VIEW_RESIDENT_COUNTY_ACTION_INTERFACE_KEY = 'LinkViewResidentCountyAction';
export type LinkViewResidentCountyAction = () => (
  owner: JudoIdentifiable<AdminUser>,
  entry: AdminCountyStored,
) => Promise<void>;

export const useLinkViewResidentCountyAction: LinkViewResidentCountyAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<LinkViewResidentCountyAction>(
    `(${OBJECTCLASS}=${LINK_VIEW_RESIDENT_COUNTY_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminUser>, entry: AdminCountyStored) {
    navigate(`admin/user/resident_county/view/${entry.__signedIdentifier}`);
  };
};
