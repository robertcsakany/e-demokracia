import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminComment,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminUser,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../data-api';
import { AdminCommentServiceForVotes } from '../data-service';

/**
 * Relation Service Implementation for AdminComment.votes
 */
export class AdminCommentServiceForVotesImpl extends JudoAxiosService implements AdminCommentServiceForVotes {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listVotes(
    owner: JudoIdentifiable<AdminComment>,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>> {
    const path = '/admin/Comment/votes/~list';
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
  async createVotes(owner: JudoIdentifiable<AdminComment>, target: AdminSimpleVote): Promise<AdminSimpleVoteStored> {
    const path = '/admin/Comment/~update/votes/~create';
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
  async deleteVotes(owner: JudoIdentifiable<AdminComment>, target: JudoIdentifiable<AdminSimpleVote>): Promise<void> {
    const path = '/admin/Comment/~update/votes/~delete';
    await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updateVotes(
    owner: JudoIdentifiable<AdminComment>,
    target: Partial<AdminSimpleVoteStored>,
  ): Promise<AdminSimpleVoteStored> {
    const path = '/admin/Comment/~update/votes/~update';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForUser(
    owner: JudoIdentifiable<AdminComment> | AdminComment,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>> {
    const path = '/admin/User/user/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setUser(
    owner: JudoIdentifiable<AdminComment>,
    target: JudoIdentifiable<AdminSimpleVote>,
    selected: JudoIdentifiable<AdminUser>,
  ): Promise<void> {
    const path = '/admin/User/~update/user/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetUser(owner: JudoIdentifiable<AdminComment>, target: JudoIdentifiable<AdminSimpleVote>): Promise<void> {
    const path = '/admin/User/~update/user/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
}
