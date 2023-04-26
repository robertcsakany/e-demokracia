import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  CommentStored,
  Comment,
  SimpleVote,
  Con,
  User,
  ProStored,
  Pro,
  SimpleVoteQueryCustomizer,
  ConQueryCustomizer,
  UserQueryCustomizer,
  ProQueryCustomizer,
  CommentQueryCustomizer,
  ConStored,
  UserStored,
  SimpleVoteStored,
} from '../data-api';
import { ConServiceForPros } from '../data-service';

/**
 * Relation Service Implementation for Con.pros
 */
export class ConServiceForProsImpl extends JudoAxiosService implements ConServiceForPros {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listPros(owner: JudoIdentifiable<Con>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>> {
    const path = '/Con/pros/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
