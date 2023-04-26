import { JudoIdentifiable } from '@judo/data-api-common';
import { IssueAttachmentQueryCustomizer, IssueAttachmentStored, IssueAttachment } from '../data-api';

/**
 * Class Service for IssueAttachment
 */
export interface IssueAttachmentService {
  refresh(
    target: JudoIdentifiable<IssueAttachment>,
    queryCustomizer?: IssueAttachmentQueryCustomizer,
  ): Promise<IssueAttachmentStored>;
}
