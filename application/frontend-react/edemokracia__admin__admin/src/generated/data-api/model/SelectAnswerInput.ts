import { JudoStored } from '@judo/data-api-common';

export interface SelectAnswerInput {
  title: string;
  description: string;
}
export type SelectAnswerInputAttributes = 'title' | 'description';

export interface SelectAnswerInputStored extends JudoStored<SelectAnswerInput>, SelectAnswerInput {}
