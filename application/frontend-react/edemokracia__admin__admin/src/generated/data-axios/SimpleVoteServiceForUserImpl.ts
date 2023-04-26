import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  SimpleVote,
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
import { SimpleVoteServiceForUser } from '../data-service';

/**
 * Relation Service Implementation for SimpleVote.user
 */
export class SimpleVoteServiceForUserImpl extends JudoAxiosService implements SimpleVoteServiceForUser {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getUser(owner: JudoIdentifiable<SimpleVote>, mask?: string): Promise<UserStored> {
    const path = '/SimpleVote/user/~get';
    const queryCustomizer: UserQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
