import { JudoIdentifiable } from '@judo/data-api-common';
import { DistrictStored, City, DistrictQueryCustomizer, District } from '../data-api';

/**
 * Relation Service for City.districts
 */
export interface CityServiceForDistricts {
  listDistricts(
    owner: JudoIdentifiable<City>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;
}
