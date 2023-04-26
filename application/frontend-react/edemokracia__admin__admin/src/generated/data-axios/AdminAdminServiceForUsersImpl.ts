import { JudoAxiosService } from './JudoAxiosService';
import { AdminUserStored, AdminUserQueryCustomizer, AdminUser } from '../data-api';
import { AdminAdminServiceForUsers } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.users
 */
export class AdminAdminServiceForUsersImpl extends JudoAxiosService implements AdminAdminServiceForUsers {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listUsers(queryCustomizer?: AdminUserQueryCustomizer): Promise<Array<AdminUserStored>> {
    const path = 'admin/Admin/users/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }
}
