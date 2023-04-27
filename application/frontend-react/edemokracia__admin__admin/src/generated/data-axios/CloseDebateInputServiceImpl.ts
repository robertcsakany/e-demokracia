import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  SelectAnswerInputStored,
  CloseDebateInputStored,
  SelectAnswerInput,
  CloseDebateInput,
  SelectAnswerInputQueryCustomizer,
} from '../data-api';
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

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForAnswers(
    owner?: JudoIdentifiable<CloseDebateInput> | CloseDebateInput,
    queryCustomizer?: SelectAnswerInputQueryCustomizer,
  ): Promise<Array<SelectAnswerInputStored>> {
    const path = '/CloseDebateInput/answers/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }
}
