import { JudoIdentifiable } from '@judo/data-api-common';
import {
  SelectAnswerVoteSelectionQueryCustomizer,
  SelectAnswerVoteSelectionStored,
  SelectAnswerVoteSelection,
} from '../data-api';

/**
 * Class Service for SelectAnswerVoteSelection
 */
export interface SelectAnswerVoteSelectionService {
  getTemplate(): Promise<SelectAnswerVoteSelection>;

  refresh(
    target: JudoIdentifiable<SelectAnswerVoteSelection>,
    queryCustomizer?: SelectAnswerVoteSelectionQueryCustomizer,
  ): Promise<SelectAnswerVoteSelectionStored>;
}
