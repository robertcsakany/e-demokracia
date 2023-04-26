import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { YesNoAbstainVoteInputStored, YesNoAbstainVoteInput } from '../data-api';
import { YesNoAbstainVoteInputService } from '../data-service';

/**
 * Class Service Implementation for YesNoAbstainVoteInput
 */
export class YesNoAbstainVoteInputServiceImpl extends JudoAxiosService implements YesNoAbstainVoteInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<YesNoAbstainVoteInput> {
    const path = '/YesNoAbstainVoteInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
