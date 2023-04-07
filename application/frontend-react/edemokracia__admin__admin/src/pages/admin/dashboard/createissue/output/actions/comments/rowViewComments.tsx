///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::comments#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssue,
  AdminIssueStored,
  AdminComment,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewCommentsAction = () => (entry: JudoIdentifiable<AdminComment>) => Promise<void>;

export const useRowViewCommentsAction: RowViewCommentsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminComment>) {
    navigate(`admin/issue/comments/view/${entry.__signedIdentifier}`);
  };
};