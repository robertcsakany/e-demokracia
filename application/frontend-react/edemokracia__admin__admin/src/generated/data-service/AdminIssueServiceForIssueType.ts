import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminIssue, AdminIssueTypeQueryCustomizer, AdminIssueType, AdminIssueTypeStored } from '../data-api';

/**
 * Relation Service for AdminIssue.issueType
 */
export interface AdminIssueServiceForIssueType {
  getIssueType(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminIssueTypeStored>;
}
