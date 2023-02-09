///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::users#RowView
// Action owner name: edemokracia::admin::Admin.users#Table
// Action DataElement name: users
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::User
// Owner Page name: edemokracia::admin::Admin.users#Table
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type { AdminUserStored, AdminUserQueryCustomizer, AdminUser } from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewUsersAction = () => (entry: JudoIdentifiable<AdminUser>) => Promise<void>;

export const useRowViewUsersAction: RowViewUsersAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminUser>) {
    navigate(`admin/admin/users/view/${entry.__signedIdentifier}`);
  };
};
