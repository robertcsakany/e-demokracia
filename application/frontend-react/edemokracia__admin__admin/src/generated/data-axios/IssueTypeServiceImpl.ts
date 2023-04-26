import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { IssueType, IssueTypeQueryCustomizer, IssueTypeStored } from '../data-api';
import { IssueTypeService } from '../data-service';

/**
 * Class Service Implementation for IssueType
 */
export class IssueTypeServiceImpl extends JudoAxiosService implements IssueTypeService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<IssueType>,
    queryCustomizer?: IssueTypeQueryCustomizer,
  ): Promise<IssueTypeStored> {
    const path = '/IssueType/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }
}
