import { JudoAxiosService } from './JudoAxiosService';
import { AdminIssueTypeQueryCustomizer, AdminIssueType, AdminIssueTypeStored } from '../data-api';
import { AdminAdminServiceForIssueTypes } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.issueTypes
 */
export class AdminAdminServiceForIssueTypesImpl extends JudoAxiosService implements AdminAdminServiceForIssueTypes {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listIssueTypes(queryCustomizer?: AdminIssueTypeQueryCustomizer): Promise<Array<AdminIssueTypeStored>> {
    const path = 'admin/Admin/issueTypes/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createIssueTypes(target: AdminIssueType): Promise<AdminIssueTypeStored> {
    const path = '/admin/Admin/issueTypes/~create';
    const response = await this.axios.post(this.getPathForActor(path), target);
    return response.data;
  }
}
