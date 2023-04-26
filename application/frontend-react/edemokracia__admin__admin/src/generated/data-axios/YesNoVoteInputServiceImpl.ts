import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { YesNoVoteInput, YesNoVoteInputStored } from '../data-api';
import { YesNoVoteInputService } from '../data-service';

/**
 * Class Service Implementation for YesNoVoteInput
 */
export class YesNoVoteInputServiceImpl extends JudoAxiosService implements YesNoVoteInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<YesNoVoteInput> {
    const path = '/YesNoVoteInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
