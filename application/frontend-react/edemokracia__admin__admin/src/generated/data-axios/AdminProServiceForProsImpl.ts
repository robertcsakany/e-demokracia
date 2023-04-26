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
import { AdminProServiceForPros } from '../data-service';

/**
 * Relation Service Implementation for AdminPro.pros
 */
export class AdminProServiceForProsImpl extends JudoAxiosService implements AdminProServiceForPros {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listPros(
    owner: JudoIdentifiable<AdminPro>,
    queryCustomizer?: AdminProQueryCustomizer,
  ): Promise<Array<AdminProStored>> {
    const path = '/admin/Pro/pros/~list';
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
  async deletePros(owner: JudoIdentifiable<AdminPro>, target: JudoIdentifiable<AdminPro>): Promise<void> {
    const path = '/admin/Pro/~update/pros/~delete';
    await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updatePros(owner: JudoIdentifiable<AdminPro>, target: Partial<AdminProStored>): Promise<AdminProStored> {
    const path = '/admin/Pro/~update/pros/~update';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
