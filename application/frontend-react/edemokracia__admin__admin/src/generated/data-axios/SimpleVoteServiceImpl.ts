import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  SimpleVote,
  User,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  SimpleVoteQueryCustomizer,
} from '../data-api';
import { SimpleVoteService } from '../data-service';

/**
 * Class Service Implementation for SimpleVote
 */
export class SimpleVoteServiceImpl extends JudoAxiosService implements SimpleVoteService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<SimpleVote>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<SimpleVoteStored> {
    const path = '/SimpleVote/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getUser(target: JudoIdentifiable<SimpleVote>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored> {
    const path = '/SimpleVote/user/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier!,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForUser(
    owner?: JudoIdentifiable<SimpleVote> | SimpleVote,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>> {
    const path = '/SimpleVote/user/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }
}
