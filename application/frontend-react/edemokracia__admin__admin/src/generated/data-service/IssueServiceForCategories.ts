import { JudoIdentifiable } from '@judo/data-api-common';
import {
  Issue,
  IssueCategory,
  User,
  UserQueryCustomizer,
  IssueCategoryStored,
  UserStored,
  IssueCategoryQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for Issue.categories
 */
export interface IssueServiceForCategories {
  listCategories(
    owner: JudoIdentifiable<Issue>,
    queryCustomizer?: IssueCategoryQueryCustomizer,
  ): Promise<Array<IssueCategoryStored>>;
}
