import { JudoIdentifiable } from '@judo/data-api-common';
import { Issue, IssueAttachmentQueryCustomizer, IssueAttachmentStored, IssueAttachment } from '../data-api';

/**
 * Relation Service for Issue.attachments
 */
export interface IssueServiceForAttachments {
  listAttachments(
    owner: JudoIdentifiable<Issue>,
    queryCustomizer?: IssueAttachmentQueryCustomizer,
  ): Promise<Array<IssueAttachmentStored>>;
}
