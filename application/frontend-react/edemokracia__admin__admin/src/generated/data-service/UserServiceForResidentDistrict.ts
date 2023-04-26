import { JudoIdentifiable } from '@judo/data-api-common';
import { User, DistrictStored, DistrictQueryCustomizer, District } from '../data-api';

/**
 * Relation Service for User.residentDistrict
 */
export interface UserServiceForResidentDistrict {
  getResidentDistrict(owner: JudoIdentifiable<User>, mask?: string): Promise<DistrictStored>;
}
