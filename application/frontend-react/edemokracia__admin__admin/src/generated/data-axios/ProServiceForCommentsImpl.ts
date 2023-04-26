import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CommentStored,
  Comment,
  SimpleVote,
  User,
  UserQueryCustomizer,
  CommentQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  Pro,
  SimpleVoteQueryCustomizer,
} from '../data-api';
import { ProServiceForComments } from '../data-service';

/**
 * Relation Service Implementation for Pro.comments
 */
export class ProServiceForCommentsImpl extends JudoAxiosService implements ProServiceForComments {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listComments(
    owner: JudoIdentifiable<Pro>,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>> {
    const path = '/Pro/comments/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
