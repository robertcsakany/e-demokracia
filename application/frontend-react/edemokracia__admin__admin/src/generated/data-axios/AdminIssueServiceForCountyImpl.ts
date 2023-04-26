import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminIssue,
  AdminCityQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminCountyStored,
  AdminCounty,
  AdminCityStored,
  AdminCity,
} from '../data-api';
import { AdminIssueServiceForCounty } from '../data-service';

/**
 * Relation Service Implementation for AdminIssue.county
 */
export class AdminIssueServiceForCountyImpl extends JudoAxiosService implements AdminIssueServiceForCounty {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCounty(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminCountyStored> {
    const path = '/admin/Issue/county/~get';
    const queryCustomizer: AdminCountyQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
