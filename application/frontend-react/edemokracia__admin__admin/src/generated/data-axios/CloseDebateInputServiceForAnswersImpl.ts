import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  SelectAnswerInputStored,
  SelectAnswerInput,
  CloseDebateInput,
  SelectAnswerInputQueryCustomizer,
} from '../data-api';
import { CloseDebateInputServiceForAnswers } from '../data-service';

/**
 * Relation Service Implementation for CloseDebateInput.answers
 */
export class CloseDebateInputServiceForAnswersImpl
  extends JudoAxiosService
  implements CloseDebateInputServiceForAnswers {}
