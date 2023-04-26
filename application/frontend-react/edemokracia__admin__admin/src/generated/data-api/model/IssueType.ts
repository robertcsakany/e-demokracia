import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaVoteType } from './EdemokraciaVoteType';

export interface IssueType {
  title: string;
  description: string;
  defaultVoteType?: null | EdemokraciaVoteType;
}
export type IssueTypeAttributes = 'title' | 'description' | 'defaultVoteType';

export interface IssueTypeStored extends JudoStored<IssueType>, IssueType {}
