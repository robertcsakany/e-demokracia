import { JudoIdentifiable } from '@judo/data-api-common';
import {
  VoteEntryStored,
  SelectAnswerVoteSelectionQueryCustomizer,
  RatingVoteInput,
  SelectAnswerVoteSelectionStored,
  VoteDefinitionQueryCustomizer,
  VoteEntry,
  YesNoAbstainVoteInput,
  VoteDefinition,
  VoteEntryQueryCustomizer,
  YesNoVoteInput,
  VoteDefinitionStored,
  SelectAnswerVoteSelection,
} from '../data-api';

/**
 * Class Service for VoteDefinition
 */
export interface VoteDefinitionService {
  refresh(
    target: JudoIdentifiable<VoteDefinition>,
    queryCustomizer?: VoteDefinitionQueryCustomizer,
  ): Promise<VoteDefinitionStored>;

  delete(target: JudoIdentifiable<VoteDefinition>): Promise<void>;

  update(target: Partial<VoteDefinitionStored>): Promise<VoteDefinitionStored>;

  getVoteEntries(
    target: JudoIdentifiable<VoteDefinition>,
    queryCustomizer?: VoteEntryQueryCustomizer,
  ): Promise<Array<VoteEntryStored>>;

  getRangeForVoteEntries(
    owner?: JudoIdentifiable<VoteDefinition> | VoteDefinition,
    queryCustomizer?: VoteEntryQueryCustomizer,
  ): Promise<Array<VoteEntryStored>>;

  voteYesNo(owner: JudoIdentifiable<VoteDefinition>, target: YesNoVoteInput): Promise<void>;

  voteYesNoAbstain(owner: JudoIdentifiable<VoteDefinition>, target: YesNoAbstainVoteInput): Promise<void>;

  voteSelectAnswer(owner: JudoIdentifiable<VoteDefinition>, target: SelectAnswerVoteSelection): Promise<void>;

  getRangeForVoteSelectAnswer(
    owner?: VoteDefinitionStored,
    queryCustomizer?: SelectAnswerVoteSelectionQueryCustomizer,
  ): Promise<Array<SelectAnswerVoteSelectionStored>>;
  voteRating(owner: JudoIdentifiable<VoteDefinition>, target: RatingVoteInput): Promise<void>;
}
