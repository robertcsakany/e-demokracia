///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::residentCity#LinkView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminUser,
  AdminCityStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewResidentCityAction = () => (entry: JudoIdentifiable<AdminCity>) => Promise<void>;

export const useLinkViewResidentCityAction: LinkViewResidentCityAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCity>) {
    navigate(`admin/user/resident_city/view/${entry.__signedIdentifier}`);
  };
};
