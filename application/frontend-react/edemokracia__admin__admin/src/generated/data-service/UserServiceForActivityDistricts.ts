import { JudoIdentifiable } from '@judo/data-api-common';
import { User, DistrictStored, DistrictQueryCustomizer, District } from '../data-api';

/**
 * Relation Service for User.activityDistricts
 */
export interface UserServiceForActivityDistricts {
  listActivityDistricts(
    owner: JudoIdentifiable<User>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;
}
