import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { CloseDebateInputStored, CloseDebateInput } from '../data-api';
import { CloseDebateInputService } from '../data-service';

/**
 * Class Service Implementation for CloseDebateInput
 */
export class CloseDebateInputServiceImpl extends JudoAxiosService implements CloseDebateInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<CloseDebateInput> {
    const path = '/CloseDebateInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
