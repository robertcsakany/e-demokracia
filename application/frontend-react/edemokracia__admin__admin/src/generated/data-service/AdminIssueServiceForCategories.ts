import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssueCategoryStored,
  AdminIssue,
  AdminIssueCategory,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminIssueCategoryQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminIssue.categories
 */
export interface AdminIssueServiceForCategories {
  listCategories(
    owner: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueCategoryQueryCustomizer,
  ): Promise<Array<AdminIssueCategoryStored>>;

  getRangeForOwner(
    owner: JudoIdentifiable<AdminIssue>,
    queryCustomizer: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>>;

  setOwner(
    owner: JudoIdentifiable<AdminIssue>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminUser>,
  ): Promise<void>;

  unsetOwner(owner: JudoIdentifiable<AdminIssue>, target: JudoIdentifiable<AdminUser>): Promise<void>;
}
