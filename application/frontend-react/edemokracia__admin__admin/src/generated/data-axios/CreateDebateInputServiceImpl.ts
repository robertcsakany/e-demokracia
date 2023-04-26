import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { CreateDebateInput, CreateDebateInputStored } from '../data-api';
import { CreateDebateInputService } from '../data-service';

/**
 * Class Service Implementation for CreateDebateInput
 */
export class CreateDebateInputServiceImpl extends JudoAxiosService implements CreateDebateInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<CreateDebateInput> {
    const path = '/CreateDebateInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
