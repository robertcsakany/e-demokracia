import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CityQueryCustomizer,
  Issue,
  CityStored,
  DistrictStored,
  City,
  DistrictQueryCustomizer,
  District,
} from '../data-api';
import { IssueServiceForCity } from '../data-service';

/**
 * Relation Service Implementation for Issue.city
 */
export class IssueServiceForCityImpl extends JudoAxiosService implements IssueServiceForCity {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCity(owner: JudoIdentifiable<Issue>, mask?: string): Promise<CityStored> {
    const path = '/Issue/city/~get';
    const queryCustomizer: CityQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
