import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CommentStored,
  Comment,
  SimpleVote,
  User,
  UserQueryCustomizer,
  CommentQueryCustomizer,
  Debate,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';
import { DebateServiceForComments } from '../data-service';

/**
 * Relation Service Implementation for Debate.comments
 */
export class DebateServiceForCommentsImpl extends JudoAxiosService implements DebateServiceForComments {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listComments(
    owner: JudoIdentifiable<Debate>,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>> {
    const path = '/Debate/comments/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
