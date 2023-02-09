///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Comment::createdBy#LinkView
// Action owner name: edemokracia::admin::Con.comments#View
// Action DataElement name: createdBy
// Action DataElement owner name: edemokracia::admin::Comment
// Action DataElement target name: edemokracia::admin::User
// Owner Page name: edemokracia::admin::Con.comments#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminUserStored,
  AdminComment,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminCommentStored,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewCreatedByAction = () => (entry: JudoIdentifiable<AdminUser>) => Promise<void>;

export const useLinkViewCreatedByAction: LinkViewCreatedByAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminUser>) {
    navigate(`admin/comment/created_by/view/${entry.__signedIdentifier}`);
  };
};
