import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  IssueCategory,
  User,
  UserQueryCustomizer,
  IssueCategoryStored,
  UserStored,
  IssueCategoryQueryCustomizer,
} from '../data-api';
import { IssueCategoryServiceForSubcategories } from '../data-service';

/**
 * Relation Service Implementation for IssueCategory.subcategories
 */
export class IssueCategoryServiceForSubcategoriesImpl
  extends JudoAxiosService
  implements IssueCategoryServiceForSubcategories
{
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listSubcategories(
    owner: JudoIdentifiable<IssueCategory>,
    queryCustomizer?: IssueCategoryQueryCustomizer,
  ): Promise<Array<IssueCategoryStored>> {
    const path = '/IssueCategory/subcategories/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
