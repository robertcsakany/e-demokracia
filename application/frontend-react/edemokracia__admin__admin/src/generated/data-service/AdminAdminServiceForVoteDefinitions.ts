import {
  AdminVoteDefinitionQueryCustomizer,
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminIssueQueryCustomizer,
  SelectAnswerVoteSelectionStored,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
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
