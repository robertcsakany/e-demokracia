import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueAttachmentStored,
  AdminIssueAttachmentQueryCustomizer,
} from '../data-api';
import { AdminIssueServiceForAttachments } from '../data-service';

/**
 * Relation Service Implementation for AdminIssue.attachments
 */
export class AdminIssueServiceForAttachmentsImpl extends JudoAxiosService implements AdminIssueServiceForAttachments {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    queryCustomizer?: AdminIssueAttachmentQueryCustomizer,
  ): Promise<Array<AdminIssueAttachmentStored>> {
    const path = '/admin/Issue/attachments/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    target: AdminIssueAttachment,
  ): Promise<AdminIssueAttachmentStored> {
    const path = '/admin/Issue/~update/attachments/~create';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async deleteAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    target: JudoIdentifiable<AdminIssueAttachment>,
  ): Promise<void> {
    const path = '/admin/Issue/~update/attachments/~delete';
    await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updateAttachments(
    owner: JudoIdentifiable<AdminIssue>,
    target: Partial<AdminIssueAttachmentStored>,
  ): Promise<AdminIssueAttachmentStored> {
    const path = '/admin/Issue/~update/attachments/~update';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
