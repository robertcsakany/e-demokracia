import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { DistrictStored, District, DistrictQueryCustomizer } from '../data-api';
import { DistrictService } from '../data-service';

/**
 * Class Service Implementation for District
 */
export class DistrictServiceImpl extends JudoAxiosService implements DistrictService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<District>,
    queryCustomizer?: DistrictQueryCustomizer,
  ): Promise<DistrictStored> {
    const path = '/District/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }
}
