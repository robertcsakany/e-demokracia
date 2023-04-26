import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminIssueDebate, AdminIssue, AdminIssueDebateStored, AdminIssueDebateQueryCustomizer } from '../data-api';

/**
 * Relation Service for AdminIssue.debates
 */
export interface AdminIssueServiceForDebates {
  listDebates(
    owner: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueDebateQueryCustomizer,
  ): Promise<Array<AdminIssueDebateStored>>;
}
