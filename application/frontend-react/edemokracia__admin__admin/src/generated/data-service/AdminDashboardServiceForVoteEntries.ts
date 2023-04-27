import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteEntry,
  AdminVoteEntryQueryCustomizer,
  AdminVoteDefinition,
  AdminVoteEntryStored,
  AdminDashboard,
} from '../data-api';

/**
 * Relation Service for AdminDashboard.voteEntries
 */
export interface AdminDashboardServiceForVoteEntries {
  listVoteEntries(
    owner: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminVoteEntryQueryCustomizer,
  ): Promise<Array<AdminVoteEntryStored>>;
}
