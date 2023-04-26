import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { Issue, IssueAttachmentQueryCustomizer, IssueAttachmentStored, IssueAttachment } from '../data-api';
import { IssueServiceForAttachments } from '../data-service';

/**
 * Relation Service Implementation for Issue.attachments
 */
export class IssueServiceForAttachmentsImpl extends JudoAxiosService implements IssueServiceForAttachments {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listAttachments(
    owner: JudoIdentifiable<Issue>,
    queryCustomizer?: IssueAttachmentQueryCustomizer,
  ): Promise<Array<IssueAttachmentStored>> {
    const path = '/Issue/attachments/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
