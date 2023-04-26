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
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminDashboard.debates
 */
export interface AdminDashboardServiceForDebates {
  listDebates(
    owner: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>>;

  deleteDebates(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminDebate>): Promise<void>;

  updateDebates(
    owner: JudoIdentifiable<AdminDashboard>,
    target: Partial<AdminDebateStored>,
  ): Promise<AdminDebateStored>;
}
