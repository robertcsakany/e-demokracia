///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::comments#RowView
// Action owner name: edemokracia::admin::Dashboard.debates#View
// Action DataElement name: comments
// Action DataElement owner name: edemokracia::admin::Debate
// Action DataElement target name: edemokracia::admin::Comment
// Owner Page name: edemokracia::admin::Dashboard.debates#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminDebate,
  AdminComment,
  AdminDebateStored,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewCommentsAction = () => (entry: JudoIdentifiable<AdminComment>) => Promise<void>;

export const useRowViewCommentsAction: RowViewCommentsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminComment>) {
    navigate(`admin/debate/comments/view/${entry.__signedIdentifier}`);
  };
};
