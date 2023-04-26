import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  Comment,
  CommentStored,
  SimpleVote,
  User,
  Con,
  ProStored,
  Pro,
  SimpleVoteQueryCustomizer,
  ConQueryCustomizer,
  UserQueryCustomizer,
  ProQueryCustomizer,
  CreateCommentInput,
  CommentQueryCustomizer,
  ConStored,
  UserStored,
  SimpleVoteStored,
  CreateArgumentInput,
} from '../data-api';
import { ProService } from '../data-service';

/**
 * Class Service Implementation for Pro
 */
export class ProServiceImpl extends JudoAxiosService implements ProService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(target: JudoIdentifiable<Pro>, queryCustomizer?: ProQueryCustomizer): Promise<ProStored> {
    const path = '/Pro/~get';
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
  async getComments(
    target: JudoIdentifiable<Pro>,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>> {
    const path = '/Pro/comments/~list';
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
  async getRangeForComments(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: CommentQueryCustomizer,
  ): Promise<Array<CommentStored>> {
    const path = '/Pro/comments/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCreatedBy(target: JudoIdentifiable<Pro>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored> {
    const path = '/Pro/createdBy/~get';
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
  async getRangeForCreatedBy(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>> {
    const path = '/Pro/createdBy/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCons(target: JudoIdentifiable<Pro>, queryCustomizer?: ConQueryCustomizer): Promise<Array<ConStored>> {
    const path = '/Pro/cons/~list';
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
  async getRangeForCons(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: ConQueryCustomizer,
  ): Promise<Array<ConStored>> {
    const path = '/Pro/cons/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getPros(target: JudoIdentifiable<Pro>, queryCustomizer?: ProQueryCustomizer): Promise<Array<ProStored>> {
    const path = '/Pro/pros/~list';
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
  async getRangeForPros(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: ProQueryCustomizer,
  ): Promise<Array<ProStored>> {
    const path = '/Pro/pros/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getVotes(
    target: JudoIdentifiable<Pro>,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>> {
    const path = '/Pro/votes/~list';
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
  async getRangeForVotes(
    owner?: JudoIdentifiable<Pro> | Pro,
    queryCustomizer?: SimpleVoteQueryCustomizer,
  ): Promise<Array<SimpleVoteStored>> {
    const path = '/Pro/votes/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError}
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createSubArgument(owner: JudoIdentifiable<Pro>, target: CreateArgumentInput): Promise<void> {
    const path = '/Pro/createSubArgument';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier!,
      },
    });
  }

  /**
   * @throws {AxiosError}
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async voteDown(owner: JudoIdentifiable<Pro>): Promise<void> {
    const path = '/Pro/voteDown';
    const response = await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier!,
      },
    });
  }

  /**
   * @throws {AxiosError}
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async voteUp(owner: JudoIdentifiable<Pro>): Promise<void> {
    const path = '/Pro/voteUp';
    const response = await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier!,
      },
    });
  }

  /**
   * @throws {AxiosError}
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createComment(owner: JudoIdentifiable<Pro>, target: CreateCommentInput): Promise<void> {
    const path = '/Pro/createComment';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier!,
      },
    });
  }
}
