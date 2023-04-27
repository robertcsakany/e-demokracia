import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SelectAnswerInputStored,
  CloseDebateInputStored,
  SelectAnswerInput,
  CloseDebateInput,
  SelectAnswerInputQueryCustomizer,
} from '../data-api';

/**
 * Class Service for CloseDebateInput
 */
export interface CloseDebateInputService {
  getTemplate(): Promise<CloseDebateInput>;

  getRangeForAnswers(
    owner?: JudoIdentifiable<CloseDebateInput> | CloseDebateInput,
    queryCustomizer?: SelectAnswerInputQueryCustomizer,
  ): Promise<Array<SelectAnswerInputStored>>;
}
