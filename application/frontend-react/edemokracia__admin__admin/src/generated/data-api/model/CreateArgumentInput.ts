import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaCreateArgumentInputType } from './EdemokraciaCreateArgumentInputType';

export interface CreateArgumentInput {
  type: EdemokraciaCreateArgumentInputType;
  title: string;
  description: string;
}
export type CreateArgumentInputAttributes = 'type' | 'title' | 'description';

export interface CreateArgumentInputStored extends JudoStored<CreateArgumentInput>, CreateArgumentInput {}
