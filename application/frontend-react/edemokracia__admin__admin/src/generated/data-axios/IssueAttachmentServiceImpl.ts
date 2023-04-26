import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { IssueAttachmentQueryCustomizer, IssueAttachmentStored, IssueAttachment } from '../data-api';
import { IssueAttachmentService } from '../data-service';

/**
 * Class Service Implementation for IssueAttachment
 */
export class IssueAttachmentServiceImpl extends JudoAxiosService implements IssueAttachmentService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<IssueAttachment>,
    queryCustomizer?: IssueAttachmentQueryCustomizer,
  ): Promise<IssueAttachmentStored> {
    const path = '/IssueAttachment/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }
}
