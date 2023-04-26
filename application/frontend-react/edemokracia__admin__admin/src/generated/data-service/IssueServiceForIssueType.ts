import { JudoIdentifiable } from '@judo/data-api-common';
import { Issue, IssueType, IssueTypeQueryCustomizer, IssueTypeStored } from '../data-api';

/**
 * Relation Service for Issue.issueType
 */
export interface IssueServiceForIssueType {
  getIssueType(owner: JudoIdentifiable<Issue>, mask?: string): Promise<IssueTypeStored>;
}
