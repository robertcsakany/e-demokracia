import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaVoteType } from './EdemokraciaVoteType';

export interface AdminIssueType {
  description: string;
  title: string;
  voteType?: null | EdemokraciaVoteType;
  representation?: null | string;
}
export type AdminIssueTypeAttributes = 'description' | 'title' | 'voteType' | 'representation';

export interface AdminIssueTypeStored extends JudoStored<AdminIssueType>, AdminIssueType {}
