import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { User, DistrictStored, DistrictQueryCustomizer, District } from '../data-api';
import { UserServiceForResidentDistrict } from '../data-service';

/**
 * Relation Service Implementation for User.residentDistrict
 */
export class UserServiceForResidentDistrictImpl extends JudoAxiosService implements UserServiceForResidentDistrict {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getResidentDistrict(owner: JudoIdentifiable<User>, mask?: string): Promise<DistrictStored> {
    const path = '/User/residentDistrict/~get';
    const queryCustomizer: DistrictQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
