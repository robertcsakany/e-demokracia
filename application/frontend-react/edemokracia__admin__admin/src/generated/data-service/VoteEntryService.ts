import { JudoIdentifiable } from '@judo/data-api-common';
import {
  VoteEntryStored,
  User,
  VoteEntry,
  UserQueryCustomizer,
  VoteDefinitionQueryCustomizer,
  UserStored,
  VoteDefinition,
  VoteEntryQueryCustomizer,
  VoteDefinitionStored,
} from '../data-api';

/**
 * Class Service for VoteEntry
 */
export interface VoteEntryService {
  getTemplate(): Promise<VoteEntry>;

  refresh(target: JudoIdentifiable<VoteEntry>, queryCustomizer?: VoteEntryQueryCustomizer): Promise<VoteEntryStored>;

  delete(target: JudoIdentifiable<VoteEntry>): Promise<void>;

  update(target: Partial<VoteEntryStored>): Promise<VoteEntryStored>;

  getUser(target: JudoIdentifiable<VoteEntry>, queryCustomizer?: UserQueryCustomizer): Promise<UserStored>;

  getRangeForUser(
    owner?: JudoIdentifiable<VoteEntry> | VoteEntry,
    queryCustomizer?: UserQueryCustomizer,
  ): Promise<Array<UserStored>>;

  setUser(target: JudoIdentifiable<VoteEntry>, selected: JudoIdentifiable<User>): Promise<void>;

  getVoteDefinition(
    target: JudoIdentifiable<VoteEntry>,
    queryCustomizer?: VoteDefinitionQueryCustomizer,
  ): Promise<VoteDefinitionStored>;

  getRangeForVoteDefinition(
    owner?: JudoIdentifiable<VoteEntry> | VoteEntry,
    queryCustomizer?: VoteDefinitionQueryCustomizer,
  ): Promise<Array<VoteDefinitionStored>>;

  setVoteDefinition(target: JudoIdentifiable<VoteEntry>, selected: JudoIdentifiable<VoteDefinition>): Promise<void>;
}
