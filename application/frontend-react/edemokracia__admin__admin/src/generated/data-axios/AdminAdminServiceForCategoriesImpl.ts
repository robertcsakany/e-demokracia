import { JudoAxiosService } from './JudoAxiosService';
import { AdminIssueCategoryStored, AdminIssueCategory, AdminIssueCategoryQueryCustomizer } from '../data-api';
import { AdminAdminServiceForCategories } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.categories
 */
export class AdminAdminServiceForCategoriesImpl extends JudoAxiosService implements AdminAdminServiceForCategories {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listCategories(queryCustomizer?: AdminIssueCategoryQueryCustomizer): Promise<Array<AdminIssueCategoryStored>> {
    const path = 'admin/Admin/categories/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   */
  async createCategories(target: AdminIssueCategory): Promise<AdminIssueCategoryStored> {
    const path = '/admin/Admin/categories/~create';
    const response = await this.axios.post(this.getPathForActor(path), target);
    return response.data;
  }
}
