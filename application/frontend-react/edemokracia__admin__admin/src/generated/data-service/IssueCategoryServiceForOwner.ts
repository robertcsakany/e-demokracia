import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  IssueCategory,
  User,
  DistrictStored,
  City,
  County,
  SimpleVoteQueryCustomizer,
  CityQueryCustomizer,
  CityStored,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  DistrictQueryCustomizer,
  District,
  CountyQueryCustomizer,
  CountyStored,
} from '../data-api';

/**
 * Relation Service for IssueCategory.owner
 */
export interface IssueCategoryServiceForOwner {
  getOwner(owner: JudoIdentifiable<IssueCategory>, mask?: string): Promise<UserStored>;
}
