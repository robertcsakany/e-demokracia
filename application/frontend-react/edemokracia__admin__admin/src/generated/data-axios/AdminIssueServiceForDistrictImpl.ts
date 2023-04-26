import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { AdminIssue, AdminDistrict, AdminDistrictStored, AdminDistrictQueryCustomizer } from '../data-api';
import { AdminIssueServiceForDistrict } from '../data-service';

/**
 * Relation Service Implementation for AdminIssue.district
 */
export class AdminIssueServiceForDistrictImpl extends JudoAxiosService implements AdminIssueServiceForDistrict {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getDistrict(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminDistrictStored> {
    const path = '/admin/Issue/district/~get';
    const queryCustomizer: AdminDistrictQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
