import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
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
 * Relation Service for SimpleVote.user
 */
export interface SimpleVoteServiceForUser {
  getUser(owner: JudoIdentifiable<SimpleVote>, mask?: string): Promise<UserStored>;
}
