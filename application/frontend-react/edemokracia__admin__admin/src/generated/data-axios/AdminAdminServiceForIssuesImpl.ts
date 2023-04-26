import { JudoAxiosService } from './JudoAxiosService';
import { AdminIssueQueryCustomizer, AdminIssue, AdminIssueStored } from '../data-api';
import { AdminAdminServiceForIssues } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.issues
 */
export class AdminAdminServiceForIssuesImpl extends JudoAxiosService implements AdminAdminServiceForIssues {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listIssues(queryCustomizer?: AdminIssueQueryCustomizer): Promise<Array<AdminIssueStored>> {
    const path = 'admin/Admin/issues/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }
}
