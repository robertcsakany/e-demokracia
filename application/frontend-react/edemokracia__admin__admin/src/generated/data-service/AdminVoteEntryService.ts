import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteEntry,
  AdminVoteEntryQueryCustomizer,
  AdminVoteDefinition,
  AdminVoteEntryStored,
} from '../data-api';

/**
 * Class Service for AdminVoteEntry
 */
export interface AdminVoteEntryService {
  refresh(
    target: JudoIdentifiable<AdminVoteEntry>,
    queryCustomizer?: AdminVoteEntryQueryCustomizer,
  ): Promise<AdminVoteEntryStored>;

  getVoteDefinition(
    target: JudoIdentifiable<AdminVoteEntry>,
    queryCustomizer?: AdminVoteDefinitionQueryCustomizer,
  ): Promise<AdminVoteDefinitionStored>;

  getRangeForVoteDefinition(
    owner?: JudoIdentifiable<AdminVoteEntry> | AdminVoteEntry,
    queryCustomizer?: AdminVoteDefinitionQueryCustomizer,
  ): Promise<Array<AdminVoteDefinitionStored>>;
}
