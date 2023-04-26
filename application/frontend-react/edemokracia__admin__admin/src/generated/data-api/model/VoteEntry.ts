import { JudoStored } from '@judo/data-api-common';
import { UserStored } from './User';
import { VoteDefinitionStored } from './VoteDefinition';

export interface VoteEntry {
  created: Date;

  user: UserStored;
  voteDefinition: VoteDefinitionStored;
}
export type VoteEntryAttributes = 'created';

export type VoteEntryRelations = 'user' | 'voteDefinition';

export interface VoteEntryStored extends JudoStored<VoteEntry>, VoteEntry {}
