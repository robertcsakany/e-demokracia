import { JudoStored } from '@judo/data-api-common';
import { AdminVoteDefinitionStored } from './AdminVoteDefinition';
import { EdemokraciaVoteStatus } from './EdemokraciaVoteStatus';

export interface AdminVoteEntry {
  created: Date;
  issueTitle?: null | string;
  debateTitle?: null | string;
  voteTitle?: null | string;
  voteStatus?: null | EdemokraciaVoteStatus;
  userName?: null | string;

  voteDefinition?: null | AdminVoteDefinitionStored;
}
export type AdminVoteEntryAttributes =
  | 'created'
  | 'issueTitle'
  | 'debateTitle'
  | 'voteTitle'
  | 'voteStatus'
  | 'userName';

export type AdminVoteEntryRelations = 'voteDefinition';

export interface AdminVoteEntryStored extends JudoStored<AdminVoteEntry>, AdminVoteEntry {}
