import { JudoIdentifiable } from '@judo/data-api-common';
import {
  VoteEntryStored,
  SelectAnswerVoteSelectionQueryCustomizer,
  SelectAnswerVoteSelectionStored,
  VoteDefinitionQueryCustomizer,
  VoteEntry,
  Debate,
  VoteDefinition,
  VoteEntryQueryCustomizer,
  VoteDefinitionStored,
  SelectAnswerVoteSelection,
} from '../data-api';

/**
 * Relation Service for Debate.debateVote
 */
export interface DebateServiceForDebateVote {
  getDebateVote(owner: JudoIdentifiable<Debate>, mask?: string): Promise<VoteDefinitionStored>;

  getRangeForVoteEntries(
    owner: JudoIdentifiable<Debate>,
    queryCustomizer: VoteEntryQueryCustomizer,
  ): Promise<Array<VoteEntryStored>>;
}
