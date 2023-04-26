import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminVoteDefinitionQueryCustomizer,
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionStored,
  SelectAnswerVoteSelectionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  SelectAnswerVoteSelection,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminDebate.voteDefinition
 */
export interface AdminDebateServiceForVoteDefinition {
  getVoteDefinition(owner: JudoIdentifiable<AdminDebate>, mask?: string): Promise<AdminVoteDefinitionStored>;
}
