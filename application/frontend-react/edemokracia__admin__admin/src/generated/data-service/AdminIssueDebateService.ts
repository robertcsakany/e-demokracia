import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminIssueDebate, AdminIssueDebateStored, AdminIssueDebateQueryCustomizer } from '../data-api';

/**
 * Class Service for AdminIssueDebate
 */
export interface AdminIssueDebateService {
  refresh(
    target: JudoIdentifiable<AdminIssueDebate>,
    queryCustomizer?: AdminIssueDebateQueryCustomizer,
  ): Promise<AdminIssueDebateStored>;
}
