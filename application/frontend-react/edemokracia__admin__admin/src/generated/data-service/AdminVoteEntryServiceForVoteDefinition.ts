import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminIssueStored,
  SelectAnswerVoteSelection,
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminIssueQueryCustomizer,
  SelectAnswerVoteSelectionStored,
  AdminVoteEntry,
  AdminDebate,
  AdminIssue,
  AdminVoteDefinition,
  AdminDebateStored,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminVoteEntry.voteDefinition
 */
export interface AdminVoteEntryServiceForVoteDefinition {
  getVoteDefinition(owner: JudoIdentifiable<AdminVoteEntry>, mask?: string): Promise<AdminVoteDefinitionStored>;
}
