import { JudoIdentifiable } from '@judo/data-api-common';
import {
  IssueCategory,
  User,
  UserQueryCustomizer,
  IssueCategoryStored,
  UserStored,
  IssueCategoryQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for IssueCategory.subcategories
 */
export interface IssueCategoryServiceForSubcategories {
  listSubcategories(
    owner: JudoIdentifiable<IssueCategory>,
    queryCustomizer?: IssueCategoryQueryCustomizer,
  ): Promise<Array<IssueCategoryStored>>;
}
