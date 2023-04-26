import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminIssueAttachment, AdminIssueAttachmentStored, AdminIssueAttachmentQueryCustomizer } from '../data-api';

/**
 * Class Service for AdminIssueAttachment
 */
export interface AdminIssueAttachmentService {
  getTemplate(): Promise<AdminIssueAttachment>;

  refresh(
    target: JudoIdentifiable<AdminIssueAttachment>,
    queryCustomizer?: AdminIssueAttachmentQueryCustomizer,
  ): Promise<AdminIssueAttachmentStored>;

  delete(target: JudoIdentifiable<AdminIssueAttachment>): Promise<void>;

  update(target: Partial<AdminIssueAttachmentStored>): Promise<AdminIssueAttachmentStored>;
}
