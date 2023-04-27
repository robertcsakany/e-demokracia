import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  Issue,
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
 * Relation Service for Issue.owner
 */
export interface IssueServiceForOwner {
  getOwner(owner: JudoIdentifiable<Issue>, mask?: string): Promise<UserStored>;
}