import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminVoteDefinitionQueryCustomizer,
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionStored,
  RatingVoteInput,
  SelectAnswerVoteSelectionStored,
  AdminDebate,
  YesNoAbstainVoteInput,
  AdminVoteDefinition,
  AdminDebateStored,
  YesNoVoteInput,
  SelectAnswerVoteSelection,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Class Service for AdminVoteDefinition
 */
export interface AdminVoteDefinitionService {
  refresh(
    target: JudoIdentifiable<AdminVoteDefinition>,
    queryCustomizer?: AdminVoteDefinitionQueryCustomizer,
  ): Promise<AdminVoteDefinitionStored>;

  delete(target: JudoIdentifiable<AdminVoteDefinition>): Promise<void>;

  update(target: Partial<AdminVoteDefinitionStored>): Promise<AdminVoteDefinitionStored>;

  getDebate(
    target: JudoIdentifiable<AdminVoteDefinition>,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<AdminDebateStored>;

  getRangeForDebate(
    owner?: JudoIdentifiable<AdminVoteDefinition> | AdminVoteDefinition,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>>;

  voteRating(owner: JudoIdentifiable<AdminVoteDefinition>, target: RatingVoteInput): Promise<void>;

  voteSelectAnswer(owner: JudoIdentifiable<AdminVoteDefinition>, target: SelectAnswerVoteSelection): Promise<void>;

  getRangeForVoteSelectAnswer(
    owner?: AdminVoteDefinitionStored,
    queryCustomizer?: SelectAnswerVoteSelectionQueryCustomizer,
  ): Promise<Array<SelectAnswerVoteSelectionStored>>;
  voteYesNo(owner: JudoIdentifiable<AdminVoteDefinition>, target: YesNoVoteInput): Promise<void>;

  voteYesNoAbstain(owner: JudoIdentifiable<AdminVoteDefinition>, target: YesNoAbstainVoteInput): Promise<void>;
}
