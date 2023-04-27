import { JudoStored } from '@judo/data-api-common';
import { SelectAnswerInputStored } from './SelectAnswerInput';
import { EdemokraciaVoteTypeOnCloseDebate } from './EdemokraciaVoteTypeOnCloseDebate';

export interface CloseDebateInput {
  voteType: EdemokraciaVoteTypeOnCloseDebate;
  title: string;
  description: string;
  closeAt: Date;

  answers?: null | Array<SelectAnswerInputStored>;
}
export type CloseDebateInputAttributes = 'voteType' | 'title' | 'description' | 'closeAt';

export type CloseDebateInputRelations = 'answers';

export interface CloseDebateInputStored extends JudoStored<CloseDebateInput>, CloseDebateInput {}
