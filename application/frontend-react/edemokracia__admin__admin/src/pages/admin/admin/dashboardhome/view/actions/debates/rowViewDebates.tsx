///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Dashboard::debates#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminDebate,
  AdminDebateStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewDebatesAction = () => (entry: JudoIdentifiable<AdminDebate>) => Promise<void>;

export const useRowViewDebatesAction: RowViewDebatesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminDebate>) {
    navigate(`admin/dashboard/debates/view/${entry.__signedIdentifier}`);
  };
};
