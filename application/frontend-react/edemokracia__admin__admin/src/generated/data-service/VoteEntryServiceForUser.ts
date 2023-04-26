import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  User,
  VoteEntry,
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
 * Relation Service for VoteEntry.user
 */
export interface VoteEntryServiceForUser {
  getUser(owner: JudoIdentifiable<VoteEntry>, mask?: string): Promise<UserStored>;
}
