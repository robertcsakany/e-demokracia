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
 * Relation Service for User.activityCities
 */
export interface UserServiceForActivityCities {
  listActivityCities(owner: JudoIdentifiable<User>, queryCustomizer?: CityQueryCustomizer): Promise<Array<CityStored>>;
}
