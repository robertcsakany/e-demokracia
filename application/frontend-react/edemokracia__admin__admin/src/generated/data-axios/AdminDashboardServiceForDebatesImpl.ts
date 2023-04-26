import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminCon,
  AdminIssueStored,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminPro,
  AdminCommentQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminProQueryCustomizer,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminComment,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminDebateStored,
  AdminUser,
  AdminCommentStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../data-api';
import { AdminDashboardServiceForDebates } from '../data-service';

/**
 * Relation Service Implementation for AdminDashboard.debates
 */
export class AdminDashboardServiceForDebatesImpl extends JudoAxiosService implements AdminDashboardServiceForDebates {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listDebates(
    owner: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>> {
    const path = '/admin/Dashboard/debates/~list';
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
  async deleteDebates(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminDebate>): Promise<void> {
    const path = '/admin/Dashboard/~update/debates/~delete';
    await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updateDebates(
    owner: JudoIdentifiable<AdminDashboard>,
    target: Partial<AdminDebateStored>,
  ): Promise<AdminDebateStored> {
    const path = '/admin/Dashboard/~update/debates/~update';
    const response = await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
