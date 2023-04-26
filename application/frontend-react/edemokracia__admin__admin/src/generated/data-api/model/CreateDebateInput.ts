import { JudoStored } from '@judo/data-api-common';

export interface CreateDebateInput {
  title: string;
  description: string;
  closeAt: Date;
}
export type CreateDebateInputAttributes = 'title' | 'description' | 'closeAt';

export interface CreateDebateInputStored extends JudoStored<CreateDebateInput>, CreateDebateInput {}
