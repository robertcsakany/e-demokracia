import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { User, DistrictStored, DistrictQueryCustomizer, District } from '../data-api';
import { UserServiceForActivityDistricts } from '../data-service';

/**
 * Relation Service Implementation for User.activityDistricts
 */
export class UserServiceForActivityDistrictsImpl extends JudoAxiosService implements UserServiceForActivityDistricts {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listActivityDistricts(
    owner: JudoIdentifiable<User>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<Array<DistrictStored>> {
    const path = '/User/activityDistricts/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
