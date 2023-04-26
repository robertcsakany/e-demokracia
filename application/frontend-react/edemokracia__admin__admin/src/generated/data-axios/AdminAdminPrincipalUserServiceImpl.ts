import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminAdminPrincipalUserStored,
  AdminAdminPrincipalUserQueryCustomizer,
  AdminAdminPrincipalUser,
} from '../data-api';
import { AdminAdminPrincipalUserService } from '../data-service';

/**
 * Class Service Implementation for AdminAdminPrincipalUser
 */
export class AdminAdminPrincipalUserServiceImpl extends JudoAxiosService implements AdminAdminPrincipalUserService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async refresh(
    target: JudoIdentifiable<AdminAdminPrincipalUser>,
    queryCustomizer?: AdminAdminPrincipalUserQueryCustomizer,
  ): Promise<AdminAdminPrincipalUserStored> {
    const path = '/admin/AdminPrincipalUser/~get';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer, {
      headers: {
        'X-Judo-SignedIdentifier': target.__signedIdentifier,
      },
    });

    return response.data;
  }
}
