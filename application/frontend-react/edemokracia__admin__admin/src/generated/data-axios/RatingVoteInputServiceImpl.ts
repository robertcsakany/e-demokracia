import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { RatingVoteInput, RatingVoteInputStored } from '../data-api';
import { RatingVoteInputService } from '../data-service';

/**
 * Class Service Implementation for RatingVoteInput
 */
export class RatingVoteInputServiceImpl extends JudoAxiosService implements RatingVoteInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<RatingVoteInput> {
    const path = '/RatingVoteInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }
}
