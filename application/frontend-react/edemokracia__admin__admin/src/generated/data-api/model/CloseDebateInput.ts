import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaVoteTypeOnCloseDebate } from './EdemokraciaVoteTypeOnCloseDebate';

export interface CloseDebateInput {
  voteType: EdemokraciaVoteTypeOnCloseDebate;
  title: string;
  description: string;
  closeAt: Date;
}
export type CloseDebateInputAttributes = 'voteType' | 'title' | 'description' | 'closeAt';

export interface CloseDebateInputStored extends JudoStored<CloseDebateInput>, CloseDebateInput {}
