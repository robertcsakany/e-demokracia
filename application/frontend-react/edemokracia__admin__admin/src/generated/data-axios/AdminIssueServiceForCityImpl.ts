import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminIssue,
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../data-api';
import { AdminIssueServiceForCity } from '../data-service';

/**
 * Relation Service Implementation for AdminIssue.city
 */
export class AdminIssueServiceForCityImpl extends JudoAxiosService implements AdminIssueServiceForCity {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCity(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminCityStored> {
    const path = '/admin/Issue/city/~get';
    const queryCustomizer: AdminCityQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
