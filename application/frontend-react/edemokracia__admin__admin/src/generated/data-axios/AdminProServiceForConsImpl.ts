import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCon,
  AdminConStored,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminCommentQueryCustomizer,
  AdminSimpleVoteQueryCustomizer,
  AdminProQueryCustomizer,
  AdminProStored,
  AdminConQueryCustomizer,
  AdminComment,
  AdminUser,
  AdminCommentStored,
  AdminSimpleVoteStored,
} from '../data-api';
import { AdminProServiceForCons } from '../data-service';

/**
 * Relation Service Implementation for AdminPro.cons
 */
export class AdminProServiceForConsImpl extends JudoAxiosService implements AdminProServiceForCons {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listCons(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminConQueryCustomizer,
  ): Promise<Array<AdminConStored>> {
    const path = '/admin/Pro/cons/~list';
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
  async deleteCons(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminCon>): Promise<void> {
    const path = '/admin/Pro/~update/cons/~delete';
    await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updateCons(owner: JudoIdentifiable<AdminPro>, target: Partial<AdminConStored>): Promise<AdminConStored> {
    const path = '/admin/Pro/~update/cons/~update';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
