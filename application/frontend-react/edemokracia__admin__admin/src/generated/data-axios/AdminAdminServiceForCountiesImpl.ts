import { JudoAxiosService } from './JudoAxiosService';
import { AdminCountyQueryCustomizer, AdminCountyStored, AdminCounty } from '../data-api';
import { AdminAdminServiceForCounties } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.counties
 */
export class AdminAdminServiceForCountiesImpl extends JudoAxiosService implements AdminAdminServiceForCounties {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listCounties(queryCustomizer?: AdminCountyQueryCustomizer): Promise<Array<AdminCountyStored>> {
    const path = 'admin/Admin/counties/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createCounties(target: AdminCounty): Promise<AdminCountyStored> {
    const path = '/admin/Admin/counties/~create';
    const response = await this.axios.post(this.getPathForActor(path), target);
    return response.data;
  }
}
