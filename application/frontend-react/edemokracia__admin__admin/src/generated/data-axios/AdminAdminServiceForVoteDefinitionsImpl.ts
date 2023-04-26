import { JudoAxiosService } from './JudoAxiosService';
import { AdminVoteDefinitionQueryCustomizer, AdminVoteDefinitionStored, AdminVoteDefinition } from '../data-api';
import { AdminAdminServiceForVoteDefinitions } from '../data-service';

/**
 * Access Relation Service Implementation for AdminAdmin.voteDefinitions
 */
export class AdminAdminServiceForVoteDefinitionsImpl
  extends JudoAxiosService
  implements AdminAdminServiceForVoteDefinitions
{
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async listVoteDefinitions(
    queryCustomizer?: AdminVoteDefinitionQueryCustomizer,
  ): Promise<Array<AdminVoteDefinitionStored>> {
    const path = 'admin/Admin/voteDefinitions/~list';
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {});

    return response.data;
  }
}
