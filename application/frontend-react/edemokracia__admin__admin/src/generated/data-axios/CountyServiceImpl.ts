import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { CityQueryCustomizer, CityStored, City, County, CountyQueryCustomizer, CountyStored } from '../data-api';
import { CountyService } from '../data-service';

/**
 * Class Service Implementation for County
 */
export class CountyServiceImpl extends JudoAxiosService implements CountyService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(target: JudoIdentifiable<County>, queryCustomizer?: CountyQueryCustomizer): Promise<CountyStored> {
    const path = '/County/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCities(target: JudoIdentifiable<County>, queryCustomizer?: CityQueryCustomizer): Promise<Array<CityStored>> {
    const path = '/County/cities/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier!,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForCities(
    owner?: JudoIdentifiable<County> | County,
    queryCustomizer?: CityQueryCustomizer,
  ): Promise<Array<CityStored>> {
    const path = '/County/cities/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }
}
