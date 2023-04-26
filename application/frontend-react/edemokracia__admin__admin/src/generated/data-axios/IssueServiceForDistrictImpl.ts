import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { Issue, DistrictStored, DistrictQueryCustomizer, District } from '../data-api';
import { IssueServiceForDistrict } from '../data-service';

/**
 * Relation Service Implementation for Issue.district
 */
export class IssueServiceForDistrictImpl extends JudoAxiosService implements IssueServiceForDistrict {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getDistrict(owner: JudoIdentifiable<Issue>, mask?: string): Promise<DistrictStored> {
    const path = '/Issue/district/~get';
    const queryCustomizer: DistrictQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
