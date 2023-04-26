import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  User,
  DistrictStored,
  City,
  Pro,
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
 * Relation Service for Pro.createdBy
 */
export interface ProServiceForCreatedBy {
  getCreatedBy(owner: JudoIdentifiable<Pro>, mask?: string): Promise<UserStored>;
}
