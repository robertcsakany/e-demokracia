///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::debates#RowView
// Action owner name: edemokracia::admin::Admin.issues#View
// Action DataElement name: debates
// Action DataElement owner name: edemokracia::admin::Issue
// Action DataElement target name: edemokracia::admin::IssueDebate
// Owner Page name: edemokracia::admin::Admin.issues#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssueDebate,
  AdminIssue,
  AdminIssueStored,
  AdminIssueDebateStored,
  AdminIssueDebateQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewDebatesAction = () => (entry: JudoIdentifiable<AdminIssueDebate>) => Promise<void>;

export const useRowViewDebatesAction: RowViewDebatesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminIssueDebate>) {
    navigate(`admin/issue/debates/view/${entry.__signedIdentifier}`);
  };
};
