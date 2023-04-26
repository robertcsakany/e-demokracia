import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CityQueryCustomizer,
  User,
  CityStored,
  DistrictStored,
  City,
  DistrictQueryCustomizer,
  District,
} from '../data-api';
import { UserServiceForActivityCities } from '../data-service';

/**
 * Relation Service Implementation for User.activityCities
 */
export class UserServiceForActivityCitiesImpl extends JudoAxiosService implements UserServiceForActivityCities {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listActivityCities(
    owner: JudoIdentifiable<User>,
    queryCustomizer?: CityQueryCustomizer,
  ): Promise<Array<CityStored>> {
    const path = '/User/activityCities/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
