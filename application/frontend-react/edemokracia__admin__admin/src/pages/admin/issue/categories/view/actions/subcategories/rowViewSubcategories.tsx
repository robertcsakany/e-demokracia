///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::IssueCategory::subcategories#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssueCategoryStored,
  AdminIssueCategory,
  AdminIssueCategoryQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewSubcategoriesAction = () => (entry: JudoIdentifiable<AdminIssueCategory>) => Promise<void>;

export const useRowViewSubcategoriesAction: RowViewSubcategoriesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminIssueCategory>) {
    navigate(`admin/issue_category/subcategories/view/${entry.__signedIdentifier}`);
  };
};
