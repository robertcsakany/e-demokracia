import {
  AdminVoteDefinitionQueryCustomizer,
  AdminVoteDefinitionStored,
  AdminVoteEntry,
  AdminVoteEntryQueryCustomizer,
  AdminVoteDefinition,
  AdminVoteEntryStored,
} from '../data-api';

/**
 * Access Relation Service for AdminAdmin.voteEntries
 */
export interface AdminAdminServiceForVoteEntries {
  listVoteEntries(queryCustomizer?: AdminVoteEntryQueryCustomizer): Promise<Array<AdminVoteEntryStored>>;
}
