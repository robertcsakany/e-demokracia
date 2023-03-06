///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::IssueCategory::subcategories#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import {
  AdminIssueCategoryStored,
  AdminIssueCategory,
  AdminIssueCategoryQueryCustomizer,
} from '../../../../../../generated/data-api';
import {
  adminIssueCategoryServiceForSubcategoriesImpl,
  adminIssueCategoryServiceImpl,
} from '../../../../../../generated/data-axios';

export type RowDeleteSubcategoriesAction = () => (
  owner: JudoIdentifiable<AdminIssueCategory>,
  selected: AdminIssueCategoryStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteSubcategoriesAction: RowDeleteSubcategoriesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteSubcategoriesAction(
    owner: JudoIdentifiable<AdminIssueCategory>,
    selected: AdminIssueCategoryStored,
    successCallback: () => void,
  ) {
    try {
      await adminIssueCategoryServiceForSubcategoriesImpl.deleteSubcategories(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
