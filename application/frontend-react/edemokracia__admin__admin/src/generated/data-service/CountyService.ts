import { JudoIdentifiable } from '@judo/data-api-common';
import { CityQueryCustomizer, CityStored, City, County, CountyQueryCustomizer, CountyStored } from '../data-api';

/**
 * Class Service for County
 */
export interface CountyService {
  refresh(target: JudoIdentifiable<County>, queryCustomizer?: CountyQueryCustomizer): Promise<CountyStored>;

  getCities(target: JudoIdentifiable<County>, queryCustomizer?: CityQueryCustomizer): Promise<Array<CityStored>>;

  getRangeForCities(
    owner?: JudoIdentifiable<County> | County,
    queryCustomizer?: CityQueryCustomizer,
  ): Promise<Array<CityStored>>;
}
