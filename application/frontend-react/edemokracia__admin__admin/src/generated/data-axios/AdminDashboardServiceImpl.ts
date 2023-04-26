import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminCreateIssueInput,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
  AdminUserStored,
  AdminDebateStored,
  AdminCreateUserInput,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../data-api';
import { AdminDashboardService } from '../data-service';

/**
 * Class Service Implementation for AdminDashboard
 */
export class AdminDashboardServiceImpl extends JudoAxiosService implements AdminDashboardService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminDashboardQueryCustomizer,
  ): Promise<AdminDashboardStored> {
    const path = '/admin/Dashboard/~get';
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
  async getIssues(
    target: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<Array<AdminIssueStored>> {
    const path = '/admin/Dashboard/issues/~list';
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
  async getRangeForIssues(
    owner?: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<Array<AdminIssueStored>> {
    const path = '/admin/Dashboard/issues/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getDebates(
    target: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>> {
    const path = '/admin/Dashboard/debates/~list';
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
  async getRangeForDebates(
    owner?: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>> {
    const path = '/admin/Dashboard/debates/~range';
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
  async createIssue(target: AdminCreateIssueInput): Promise<AdminIssueStored> {
    const path = '/admin/Dashboard/createIssue';
    const response = await this.axios.post(this.getPathForActor(path), target);

    return response.data;
  }

  /**
   * @throws {AxiosError}
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createUser(target: AdminCreateUserInput): Promise<AdminUserStored> {
    const path = '/admin/Dashboard/createUser';
    const response = await this.axios.post(this.getPathForActor(path), target);

    return response.data;
  }
}
