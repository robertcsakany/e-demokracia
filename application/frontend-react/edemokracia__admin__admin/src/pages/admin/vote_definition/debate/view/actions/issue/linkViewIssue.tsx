///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::issue#LinkView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssueQueryCustomizer,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewIssueAction = () => (entry: JudoIdentifiable<AdminIssue>) => Promise<void>;

export const useLinkViewIssueAction: LinkViewIssueAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminIssue>) {
    navigate(`admin/debate/issue/view/${entry.__signedIdentifier}`);
  };
};
