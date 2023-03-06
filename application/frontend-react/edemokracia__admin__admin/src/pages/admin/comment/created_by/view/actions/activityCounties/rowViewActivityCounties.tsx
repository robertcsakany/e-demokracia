///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::activityCounties#RowView
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

export type RowViewActivityCountiesAction = () => (entry: JudoIdentifiable<AdminCounty>) => Promise<void>;

export const useRowViewActivityCountiesAction: RowViewActivityCountiesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCounty>) {
    navigate(`admin/user/activity_counties/view/${entry.__signedIdentifier}`);
  };
};
