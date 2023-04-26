import { JudoStored } from '@judo/data-api-common';

export interface SelectAnswerVoteSelection {
  title: string;
  description?: null | string;
}
export type SelectAnswerVoteSelectionAttributes = 'title' | 'description';

export interface SelectAnswerVoteSelectionStored
  extends JudoStored<SelectAnswerVoteSelection>,
    SelectAnswerVoteSelection {}
