import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CityQueryCustomizer,
  CityStored,
  DistrictStored,
  City,
  County,
  DistrictQueryCustomizer,
  District,
} from '../data-api';

/**
 * Relation Service for County.cities
 */
export interface CountyServiceForCities {
  listCities(owner: JudoIdentifiable<County>, queryCustomizer?: CityQueryCustomizer): Promise<Array<CityStored>>;
}
