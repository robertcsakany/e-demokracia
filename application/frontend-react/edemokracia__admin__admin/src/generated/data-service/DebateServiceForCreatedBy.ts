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
  Debate,
  UserStored,
  SimpleVoteStored,
  DistrictQueryCustomizer,
  District,
  CountyQueryCustomizer,
  CountyStored,
} from '../data-api';

/**
 * Relation Service for Debate.createdBy
 */
export interface DebateServiceForCreatedBy {
  getCreatedBy(owner: JudoIdentifiable<Debate>, mask?: string): Promise<UserStored>;
}
