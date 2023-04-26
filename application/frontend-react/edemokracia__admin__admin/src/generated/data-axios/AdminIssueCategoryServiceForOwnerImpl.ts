import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCityQueryCustomizer,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminSimpleVote,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminSimpleVoteQueryCustomizer,
  AdminDistrictQueryCustomizer,
  AdminIssueCategory,
  AdminDistrict,
  AdminUser,
  AdminCountyStored,
  AdminCityStored,
  AdminSimpleVoteStored,
} from '../data-api';
import { AdminIssueCategoryServiceForOwner } from '../data-service';

/**
 * Relation Service Implementation for AdminIssueCategory.owner
 */
export class AdminIssueCategoryServiceForOwnerImpl
  extends JudoAxiosService
  implements AdminIssueCategoryServiceForOwner
{
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getOwner(owner: JudoIdentifiable<AdminIssueCategory>, mask?: string): Promise<AdminUserStored> {
    const path = '/admin/IssueCategory/owner/~get';
    const queryCustomizer: AdminUserQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForVotes(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminSimpleVoteQueryCustomizer,
  ): Promise<Array<AdminSimpleVoteStored>> {
    const path = '/admin/SimpleVote/votes/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setVotes(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void> {
    const path = '/admin/SimpleVote/~update/votes/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async addOwnerVotes(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void> {
    const path = '/admin/SimpleVote/~update/votes/~add';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async removeOwnerVotes(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminSimpleVote>>,
  ): Promise<void> {
    const path = '/admin/SimpleVote/~update/votes/~remove';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForActivityCounties(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>> {
    const path = '/admin/County/activityCounties/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setActivityCounties(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void> {
    const path = '/admin/County/~update/activityCounties/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async addOwnerActivityCounties(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void> {
    const path = '/admin/County/~update/activityCounties/~add';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async removeOwnerActivityCounties(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCounty>>,
  ): Promise<void> {
    const path = '/admin/County/~update/activityCounties/~remove';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForResidentCounty(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>> {
    const path = '/admin/County/residentCounty/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setResidentCounty(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminCounty>,
  ): Promise<void> {
    const path = '/admin/County/~update/residentCounty/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetResidentCounty(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
  ): Promise<void> {
    const path = '/admin/County/~update/residentCounty/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForActivityCities(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>> {
    const path = '/admin/City/activityCities/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setActivityCities(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void> {
    const path = '/admin/City/~update/activityCities/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async addOwnerActivityCities(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void> {
    const path = '/admin/City/~update/activityCities/~add';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async removeOwnerActivityCities(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminCity>>,
  ): Promise<void> {
    const path = '/admin/City/~update/activityCities/~remove';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForResidentCity(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>> {
    const path = '/admin/City/residentCity/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setResidentCity(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminCity>,
  ): Promise<void> {
    const path = '/admin/City/~update/residentCity/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetResidentCity(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
  ): Promise<void> {
    const path = '/admin/City/~update/residentCity/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForActivityDistricts(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>> {
    const path = '/admin/District/activityDistricts/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setActivityDistricts(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void> {
    const path = '/admin/District/~update/activityDistricts/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async addOwnerActivityDistricts(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void> {
    const path = '/admin/District/~update/activityDistricts/~add';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async removeOwnerActivityDistricts(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: Array<JudoIdentifiable<AdminDistrict>>,
  ): Promise<void> {
    const path = '/admin/District/~update/activityDistricts/~remove';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getRangeForResidentDistrict(
    owner: JudoIdentifiable<AdminIssueCategory> | AdminIssueCategory,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>> {
    const path = '/admin/District/residentDistrict/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner,
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async setResidentDistrict(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
    selected: JudoIdentifiable<AdminDistrict>,
  ): Promise<void> {
    const path = '/admin/District/~update/residentDistrict/~set';
    await this.axios.post(this.getPathForActor(path), selected, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async unsetResidentDistrict(
    owner: JudoIdentifiable<AdminIssueCategory>,
    target: JudoIdentifiable<AdminUser>,
  ): Promise<void> {
    const path = '/admin/District/~update/residentDistrict/~unset';
    await this.axios.post(this.getPathForActor(path), undefined, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });
  }
}
