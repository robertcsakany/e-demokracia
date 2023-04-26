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
 * Access Relation Service for AdminAdmin.voteDefinitions
 */
export interface AdminAdminServiceForVoteDefinitions {
  listVoteDefinitions(queryCustomizer?: AdminVoteDefinitionQueryCustomizer): Promise<Array<AdminVoteDefinitionStored>>;
}
