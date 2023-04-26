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
 * Class Service for IssueCategory
 */
export interface IssueCategoryService {
  refresh(
    target: JudoIdentifiable<IssueCategory>,
    queryCustomizer?: IssueCategoryQueryCustomizer,
  ): Promise<IssueCategoryStored>;

  getSubcategories(
    target: JudoIdentifiable<IssueCategory>,
    queryCustomizer?: IssueCategoryQueryCustomizer,
  ): Promise<Array<IssueCategoryStored>>;

  getRangeForSubcategories(
    owner?: JudoIdentifiable<IssueCategory> | IssueCategory,
    queryCustomizer?: IssueCategoryQueryCustomizer,
  ): Promise<Array<IssueCategoryStored>>;

  getOwner(target: JudoIdentifiable<IssueCategory>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getRangeForOwner(
    owner?: JudoIdentifiable<IssueCategory> | IssueCategory,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>>;
}
