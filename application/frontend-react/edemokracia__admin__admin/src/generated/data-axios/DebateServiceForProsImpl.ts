import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CommentStored,
  Comment,
  SimpleVote,
  User,
  Con,
  ProStored,
  Pro,
  SimpleVoteQueryCustomizer,
  ConQueryCustomizer,
  UserQueryCustomizer,
  ProQueryCustomizer,
  CommentQueryCustomizer,
  Debate,
  ConStored,
  UserStored,
  SimpleVoteStored,
} from '../data-api';
import { DebateServiceForPros } from '../data-service';

/**
 * Relation Service Implementation for Debate.pros
 */
export class DebateServiceForProsImpl extends JudoAxiosService implements DebateServiceForPros {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listPros(owner: JudoIdentifiable<Debate>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>> {
    const path = '/Debate/pros/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
