import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminCon,
  AdminIssueStored,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminPro,
  AdminCommentQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminProQueryCustomizer,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminComment,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminDebateStored,
  AdminUser,
  AdminCommentStored,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminVoteDefinition.debate
 */
export interface AdminVoteDefinitionServiceForDebate {
  getDebate(owner: JudoIdentifiable<AdminVoteDefinition>, mask?: string): Promise<AdminDebateStored>;
}
