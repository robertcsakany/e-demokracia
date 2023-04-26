import { JudoIdentifiable } from '@judo/data-api-common';
import { CityQueryCustomizer, User, CityStored, City, CountyQueryCustomizer, County, CountyStored } from '../data-api';

/**
 * Relation Service for User.activityCounties
 */
export interface UserServiceForActivityCounties {
  listActivityCounties(
    owner: JudoIdentifiable<User>,
    queryCustomizer?: CountyQueryCustomizer,
  ): Promise<Array<CountyStored>>;
}
