import { JudoIdentifiable } from '@judo/data-api-common';
import { CityQueryCustomizer, CityStored, DistrictStored, City, District, DistrictQueryCustomizer } from '../data-api';

/**
 * Class Service for City
 */
export interface CityService {
  refresh(target: JudoIdentifiable<City>, queryCustomizer?: CityQueryCustomizer): Promise<CityStored>;

  getDistricts(
    target: JudoIdentifiable<City>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;

  getRangeForDistricts(
    owner?: JudoIdentifiable<City> | City,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>>;
}
