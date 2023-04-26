import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminIssueDebate,
  AdminCityQueryCustomizer,
  AdminIssueStored,
  AdminDistrictStored,
  AdminCommentQueryCustomizer,
  AdminCounty,
  AdminCity,
  AdminIssueDebateQueryCustomizer,
  AdminDistrictQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminIssueCategoryStored,
  AdminIssueCategory,
  AdminComment,
  AdminUser,
  AdminCountyStored,
  AdminCityStored,
  AdminDashboard,
  AdminIssueTypeStored,
  AdminUserStored,
  AdminIssueAttachmentStored,
  AdminUserQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminIssueDebateStored,
  AdminIssueAttachmentQueryCustomizer,
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueTypeQueryCustomizer,
  AdminIssueType,
  AdminDistrict,
  AdminIssueCategoryQueryCustomizer,
  AdminCommentStored,
} from '../data-api';
import { AdminDashboardServiceForIssues } from '../data-service';

/**
 * Relation Service Implementation for AdminDashboard.issues
 */
export class AdminDashboardServiceForIssuesImpl extends JudoAxiosService implements AdminDashboardServiceForIssues {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listIssues(
    owner: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<Array<AdminIssueStored>> {
    const path = '/admin/Dashboard/issues/~list';
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
  async deleteIssues(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminIssue>): Promise<void> {
    const path = '/admin/Dashboard/~update/issues/~delete';
    await this.axios.post(this.getPathForActor(path), target, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async updateIssues(
    owner: JudoIdentifiable<AdminDashboard>,
    target: Partial<AdminIssueStored>,
  ): Promise<AdminIssueStored> {
    const path = '/admin/Dashboard/~update/issues/~update';
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
  async getRangeForOwner(
    owner: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminUserQueryCustomizer,
  ): Promise<Array<AdminUserStored>> {
    const path = '/admin/User/owner/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setOwner(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: JudoIdentifiable<AdminUser>,
  ): Promise<void> {
    const path = '/admin/User/~update/owner/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetOwner(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminIssue>): Promise<void> {
    const path = '/admin/User/~update/owner/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForCategories(
    owner: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminIssueCategoryQueryCustomizer,
  ): Promise<Array<AdminIssueCategoryStored>> {
    const path = '/admin/IssueCategory/categories/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setCategories(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void> {
    const path = '/admin/IssueCategory/~update/categories/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async addIssuesCategories(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void> {
    const path = '/admin/IssueCategory/~update/categories/~add';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async removeIssuesCategories(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: Array<JudoIdentifiable<AdminIssueCategory>>,
  ): Promise<void> {
    const path = '/admin/IssueCategory/~update/categories/~remove';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForIssueType(
    owner: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<Array<AdminIssueTypeStored>> {
    const path = '/admin/IssueType/issueType/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setIssueType(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: JudoIdentifiable<AdminIssueType>,
  ): Promise<void> {
    const path = '/admin/IssueType/~update/issueType/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetIssueType(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminIssue>): Promise<void> {
    const path = '/admin/IssueType/~update/issueType/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForCounty(
    owner: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>> {
    const path = '/admin/County/county/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setCounty(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: JudoIdentifiable<AdminCounty>,
  ): Promise<void> {
    const path = '/admin/County/~update/county/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetCounty(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminIssue>): Promise<void> {
    const path = '/admin/County/~update/county/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForCity(
    owner: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>> {
    const path = '/admin/City/city/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setCity(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: JudoIdentifiable<AdminCity>,
  ): Promise<void> {
    const path = '/admin/City/~update/city/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetCity(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminIssue>): Promise<void> {
    const path = '/admin/City/~update/city/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForDistrict(
    owner: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>> {
    const path = '/admin/District/district/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setDistrict(
    owner: JudoIdentifiable<AdminDashboard>,
    target: JudoIdentifiable<AdminIssue>,
    selected: JudoIdentifiable<AdminDistrict>,
  ): Promise<void> {
    const path = '/admin/District/~update/district/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetDistrict(owner: JudoIdentifiable<AdminDashboard>, target: JudoIdentifiable<AdminIssue>): Promise<void> {
    const path = '/admin/District/~update/district/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
}
