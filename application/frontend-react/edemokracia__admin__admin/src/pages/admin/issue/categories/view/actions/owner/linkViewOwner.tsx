///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::IssueCategory::owner#LinkView
// Action owner name: edemokracia::admin::Issue.categories#View
// Action DataElement name: owner
// Action DataElement owner name: edemokracia::admin::IssueCategory
// Action DataElement target name: edemokracia::admin::User
// Owner Page name: edemokracia::admin::Issue.categories#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssueCategoryStored,
  AdminUserStored,
  AdminIssueCategory,
  AdminUserQueryCustomizer,
  AdminUser,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type LinkViewOwnerAction = () => (entry: JudoIdentifiable<AdminUser>) => Promise<void>;

export const useLinkViewOwnerAction: LinkViewOwnerAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminUser>) {
    navigate(`admin/issue_category/owner/view/${entry.__signedIdentifier}`);
  };
};
