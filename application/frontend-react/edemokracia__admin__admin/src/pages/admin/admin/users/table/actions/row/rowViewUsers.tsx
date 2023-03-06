///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::users#RowView
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
