///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::User::activityCounties#RowView
// Action owner name: edemokracia::admin::Debate.createdBy#View
// Action DataElement name: activityCounties
// Action DataElement owner name: edemokracia::admin::User
// Action DataElement target name: edemokracia::admin::County
// Owner Page name: edemokracia::admin::Debate.createdBy#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminUserStored,
  AdminCountyQueryCustomizer,
  AdminUser,
  AdminCountyStored,
  AdminCounty,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewActivityCountiesAction = () => (entry: JudoIdentifiable<AdminCounty>) => Promise<void>;

export const useRowViewActivityCountiesAction: RowViewActivityCountiesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCounty>) {
    navigate(`admin/user/activity_counties/view/${entry.__signedIdentifier}`);
  };
};
