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
import { UserServiceForResidentCity } from '../data-service';

/**
 * Relation Service Implementation for User.residentCity
 */
export class UserServiceForResidentCityImpl extends JudoAxiosService implements UserServiceForResidentCity {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getResidentCity(owner: JudoIdentifiable<User>, mask?: string): Promise<CityStored> {
    const path = '/User/residentCity/~get';
    const queryCustomizer: CityQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
