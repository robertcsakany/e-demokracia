import { JudoIdentifiable } from '@judo/data-api-common';
import { CityQueryCustomizer, User, CityStored, City, CountyQueryCustomizer, County, CountyStored } from '../data-api';

/**
 * Relation Service for User.residentCounty
 */
export interface UserServiceForResidentCounty {
  getResidentCounty(owner: JudoIdentifiable<User>, mask?: string): Promise<CountyStored>;
}
