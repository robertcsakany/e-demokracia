import {
  AdminIssueCategoryStored,
  AdminIssueCategory,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
} from '../data-api';

/**
 * Access Relation Service for AdminAdmin.categories
 */
export interface AdminAdminServiceForCategories {
  listCategories(queryCustomizer?: AdminIssueCategoryQueryCustomizer): Promise<Array<AdminIssueCategoryStored>>;

  createCategories(target: AdminIssueCategory): Promise<AdminIssueCategoryStored>;
}
