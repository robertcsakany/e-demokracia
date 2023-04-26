import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { DistrictStored, City, DistrictQueryCustomizer, District } from '../data-api';
import { CityServiceForDistricts } from '../data-service';

/**
 * Relation Service Implementation for City.districts
 */
export class CityServiceForDistrictsImpl extends JudoAxiosService implements CityServiceForDistricts {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listDistricts(
    owner: JudoIdentifiable<City>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>> {
    const path = '/City/districts/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
