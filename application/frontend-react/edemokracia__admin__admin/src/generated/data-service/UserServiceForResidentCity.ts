import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CityQueryCustomizer,
  User,
  CityStored,
  DistrictStored,
  City,
  DistrictQueryCustomizer,
  District,
} from '../data-api';

/**
 * Relation Service for User.residentCity
 */
export interface UserServiceForResidentCity {
  getResidentCity(owner: JudoIdentifiable<User>, mask?: string): Promise<CityStored>;
}
