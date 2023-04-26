import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  SimpleVote,
  IssueCategory,
  User,
  DistrictStored,
  City,
  County,
  SimpleVoteQueryCustomizer,
  CityQueryCustomizer,
  CityStored,
  UserQueryCustomizer,
  UserStored,
  SimpleVoteStored,
  DistrictQueryCustomizer,
  District,
  CountyQueryCustomizer,
  CountyStored,
} from '../data-api';
import { IssueCategoryServiceForOwner } from '../data-service';

/**
 * Relation Service Implementation for IssueCategory.owner
 */
export class IssueCategoryServiceForOwnerImpl extends JudoAxiosService implements IssueCategoryServiceForOwner {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getOwner(owner: JudoIdentifiable<IssueCategory>, mask?: string): Promise<UserStored> {
    const path = '/IssueCategory/owner/~get';
    const queryCustomizer: UserQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
