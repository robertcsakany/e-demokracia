import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { CreateCommentInputStored, CreateCommentInput } from '../data-api';
import { CreateCommentInputService } from '../data-service';

/**
 * Class Service Implementation for CreateCommentInput
 */
export class CreateCommentInputServiceImpl extends JudoAxiosService implements CreateCommentInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<CreateCommentInput> {
    const path = '/CreateCommentInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
