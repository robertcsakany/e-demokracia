import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueAttachmentStored,
  AdminIssueAttachmentQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminIssue.attachments
 */
export interface AdminIssueServiceForAttachments {
  listAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueAttachmentQueryCustomizer,
  ): Promise<Array<AdminIssueAttachmentStored>>;

  createAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    target: AdminIssueAttachment,
  ): Promise<AdminIssueAttachmentStored>;

  deleteAttachments(owner: JudoIdentifiable<AdminIssue>, target: JudoIdentifiable<AdminIssueAttachment>): Promise<void>;

  updateAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    target: Partial<AdminIssueAttachmentStored>,
  ): Promise<AdminIssueAttachmentStored>;
}
