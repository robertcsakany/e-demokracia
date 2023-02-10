///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::residentCounty#LinkView
// Action owner name: edemokracia::admin::Issue.owner#View
// Action DataElement name: residentCounty
// Action DataElement owner name: edemokracia::admin::User
// Action DataElement target name: edemokracia::admin::County
// Owner Page name: edemokracia::admin::Issue.owner#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminUserStored,
  AdminCountyQueryCustomizer,
  AdminUser,
  AdminCounty,
  AdminCountyStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewResidentCountyAction = () => (entry: JudoIdentifiable<AdminCounty>) => Promise<void>;

export const useLinkViewResidentCountyAction: LinkViewResidentCountyAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCounty>) {
    navigate(`admin/user/resident_county/view/${entry.__signedIdentifier}`);
  };
};
