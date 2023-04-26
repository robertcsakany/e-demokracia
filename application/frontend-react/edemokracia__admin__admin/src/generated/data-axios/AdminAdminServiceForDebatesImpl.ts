import { JudoAxiosService } from './JudoAxiosService';
import { AdminDebate, AdminDebateStored, AdminDebateQueryCustomizer } from '../data-api';
import { AdminAdminServiceForDebates } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.debates
 */
export class AdminAdminServiceForDebatesImpl extends JudoAxiosService implements AdminAdminServiceForDebates {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listDebates(queryCustomizer?: AdminDebateQueryCustomizer): Promise<Array<AdminDebateStored>> {
    const path = 'admin/Admin/debates/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }
}
