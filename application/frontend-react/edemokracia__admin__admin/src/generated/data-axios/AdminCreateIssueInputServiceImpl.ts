import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminCityQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminDistrictStored,
  AdminCounty,
  AdminCity,
  AdminCreateIssueInputStored,
  AdminDistrictQueryCustomizer,
  AdminCreateIssueInput,
  AdminIssueType,
  AdminIssueTypeQueryCustomizer,
  AdminDistrict,
  AdminCountyStored,
  AdminCityStored,
  AdminIssueTypeStored,
} from '../data-api';
import { AdminCreateIssueInputService } from '../data-service';

/**
 * Class Service Implementation for AdminCreateIssueInput
 */
export class AdminCreateIssueInputServiceImpl extends JudoAxiosService implements AdminCreateIssueInputService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getTemplate(): Promise<AdminCreateIssueInput> {
    const path = '/admin/CreateIssueInput/~template';
    const response = await this.axios.get(this.getPathForActor(path));

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getIssueType(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<AdminIssueTypeStored> {
    const path = '/admin/CreateIssueInput/issueType/~get';
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
  async getRangeForIssueType(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<Array<AdminIssueTypeStored>> {
    const path = '/admin/CreateIssueInput/issueType/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCounty(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<AdminCountyStored> {
    const path = '/admin/CreateIssueInput/county/~get';
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
  async getRangeForCounty(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminCountyQueryCustomizer,
  ): Promise<Array<AdminCountyStored>> {
    const path = '/admin/CreateIssueInput/county/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getCity(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<AdminCityStored> {
    const path = '/admin/CreateIssueInput/city/~get';
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
  async getRangeForCity(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>> {
    const path = '/admin/CreateIssueInput/city/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getDistrict(
    target: JudoIdentifiable<AdminCreateIssueInput>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<AdminDistrictStored> {
    const path = '/admin/CreateIssueInput/district/~get';
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
  async getRangeForDistrict(
    owner?: JudoIdentifiable<AdminCreateIssueInput> | AdminCreateIssueInput,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>> {
    const path = '/admin/CreateIssueInput/district/~range';
    const response = await this.axios.post(this.getPathForActor(path), {
      owner: owner ?? {},
      queryCustomizer: queryCustomizer ?? {},
    });

    return response.data;
  }
}
