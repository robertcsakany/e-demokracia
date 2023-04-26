import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminUser,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../data-api';
import { AdminUserServiceForResidentCity } from '../data-service';

/**
 * Relation Service Implementation for AdminUser.residentCity
 */
export class AdminUserServiceForResidentCityImpl extends JudoAxiosService implements AdminUserServiceForResidentCity {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getResidentCity(owner: JudoIdentifiable<AdminUser>, mask?: string): Promise<AdminCityStored> {
    const path = '/admin/User/residentCity/~get';
    const queryCustomizer: AdminCityQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updateResidentCity(
    owner: JudoIdentifiable<AdminUser>,
    target: Partial<AdminCityStored>,
  ): Promise<AdminCityStored> {
    const path = '/admin/User/~update/residentCity/~update';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
