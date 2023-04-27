//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: ViewAction

import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminUserStored,
  AdminDistrict,
  AdminDistrictStored,
  AdminUser,
  AdminDistrictQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const LINK_VIEW_RESIDENT_DISTRICT_ACTION_INTERFACE_KEY = 'LinkViewResidentDistrictAction';
export type LinkViewResidentDistrictAction = () => (
  owner: JudoIdentifiable<AdminUser>,
  entry: AdminDistrictStored,
) => Promise<void>;

export const useLinkViewResidentDistrictAction: LinkViewResidentDistrictAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<LinkViewResidentDistrictAction>(
    `(${OBJECTCLASS}=${LINK_VIEW_RESIDENT_DISTRICT_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminUser>, entry: AdminDistrictStored) {
    navigate(`admin/user/resident_district/view/${entry.__signedIdentifier}`);
  };
};
