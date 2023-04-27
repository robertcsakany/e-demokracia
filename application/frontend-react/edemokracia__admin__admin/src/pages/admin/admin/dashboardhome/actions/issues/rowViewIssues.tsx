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
  AdminIssueQueryCustomizer,
  AdminIssue,
  AdminIssueStored,
  AdminDashboardStored,
  AdminDashboard,
} from '../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../components';

export const ROW_VIEW_ISSUES_ACTION_INTERFACE_KEY = 'RowViewIssuesAction';
export type RowViewIssuesAction = () => (
  owner: JudoIdentifiable<AdminDashboard>,
  entry: AdminIssueStored,
) => Promise<void>;

export const useRowViewIssuesAction: RowViewIssuesAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<RowViewIssuesAction>(
    `(${OBJECTCLASS}=${ROW_VIEW_ISSUES_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminDashboard>, entry: AdminIssueStored) {
    navigate(`admin/dashboard/issues/view/${entry.__signedIdentifier}`);
  };
};
