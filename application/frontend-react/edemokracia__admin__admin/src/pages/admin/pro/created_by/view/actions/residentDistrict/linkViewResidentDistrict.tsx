///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::residentDistrict#LinkView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminUserStored,
  AdminDistrict,
  AdminDistrictStored,
  AdminUser,
  AdminDistrictQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewResidentDistrictAction = () => (entry: JudoIdentifiable<AdminDistrict>) => Promise<void>;

export const useLinkViewResidentDistrictAction: LinkViewResidentDistrictAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminDistrict>) {
    navigate(`admin/user/resident_district/view/${entry.__signedIdentifier}`);
  };
};
