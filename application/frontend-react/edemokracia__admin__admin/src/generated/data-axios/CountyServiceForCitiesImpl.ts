import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CityQueryCustomizer,
  CityStored,
  DistrictStored,
  City,
  County,
  DistrictQueryCustomizer,
  District,
} from '../data-api';
import { CountyServiceForCities } from '../data-service';

/**
 * Relation Service Implementation for County.cities
 */
export class CountyServiceForCitiesImpl extends JudoAxiosService implements CountyServiceForCities {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listCities(owner: JudoIdentifiable<County>, queryCustomizer?: CityQueryCustomizer): Promise<Array<CityStored>> {
    const path = '/County/cities/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
