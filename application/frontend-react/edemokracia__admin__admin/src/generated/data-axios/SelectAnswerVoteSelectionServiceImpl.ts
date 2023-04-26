import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  SelectAnswerVoteSelectionQueryCustomizer,
  SelectAnswerVoteSelectionStored,
  SelectAnswerVoteSelection,
} from '../data-api';
import { SelectAnswerVoteSelectionService } from '../data-service';

/**
 * Class Service Implementation for SelectAnswerVoteSelection
 */
export class SelectAnswerVoteSelectionServiceImpl extends JudoAxiosService implements SelectAnswerVoteSelectionService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<SelectAnswerVoteSelection> {
    const path = '/SelectAnswerVoteSelection/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<SelectAnswerVoteSelection>,
    queryCustomizer?: SelectAnswerVoteSelectionQueryCustomizer,
  ): Promise<SelectAnswerVoteSelectionStored> {
    const path = '/SelectAnswerVoteSelection/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }
}
