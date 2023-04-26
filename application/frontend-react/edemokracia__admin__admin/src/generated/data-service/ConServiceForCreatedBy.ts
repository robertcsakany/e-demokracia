import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SimpleVote,
  Con,
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
 * Relation Service for Con.createdBy
 */
export interface ConServiceForCreatedBy {
  getCreatedBy(owner: JudoIdentifiable<Con>, mask?: string): Promise<UserStored>;
}
