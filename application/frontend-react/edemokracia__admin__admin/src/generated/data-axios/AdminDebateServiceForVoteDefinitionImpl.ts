import { JudoIdentifiable } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import {
  AdminVoteDefinitionQueryCustomizer,
  SelectAnswerVoteSelectionQueryCustomizer,
  AdminVoteDefinitionStored,
  SelectAnswerVoteSelectionStored,
  AdminDebate,
  AdminVoteDefinition,
  AdminDebateStored,
  SelectAnswerVoteSelection,
  AdminDebateQueryCustomizer,
} from '../data-api';
import { AdminDebateServiceForVoteDefinition } from '../data-service';

/**
 * Relation Service Implementation for AdminDebate.voteDefinition
 */
export class AdminDebateServiceForVoteDefinitionImpl
  extends JudoAxiosService
  implements AdminDebateServiceForVoteDefinition
{
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   */
  async getVoteDefinition(owner: JudoIdentifiable<AdminDebate>, mask?: string): Promise<AdminVoteDefinitionStored> {
    const path = '/admin/Debate/voteDefinition/~get';
    const queryCustomizer: AdminVoteDefinitionQueryCustomizer | undefined = mask ? { _mask: mask } : undefined;
    const response = await this.axios.post(this.getPathForActor(path), queryCustomizer ?? {}, {
      headers: {
        'X-Judo-SignedIdentifier': owner.__signedIdentifier,
      },
    });

    return response.data;
  }
}
