///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::categories#RowView
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminIssueCategoryStored,
  AdminIssueCategory,
  AdminIssueCategoryQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewCategoriesAction = () => (entry: JudoIdentifiable<AdminIssueCategory>) => Promise<void>;

export const useRowViewCategoriesAction: RowViewCategoriesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminIssueCategory>) {
    navigate(`admin/admin/categories/view/${entry.__signedIdentifier}`);
  };
};
