import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { CreateArgumentInputStored, CreateArgumentInput } from '../data-api';
import { CreateArgumentInputService } from '../data-service';

/**
 * Class Service Implementation for CreateArgumentInput
 */
export class CreateArgumentInputServiceImpl extends JudoAxiosService implements CreateArgumentInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<CreateArgumentInput> {
    const path = '/CreateArgumentInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
