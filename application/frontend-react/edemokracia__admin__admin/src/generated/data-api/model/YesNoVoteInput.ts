import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaYesNoVoteValue } from './EdemokraciaYesNoVoteValue';

export interface YesNoVoteInput {
  value?: null | EdemokraciaYesNoVoteValue;
}
export type YesNoVoteInputAttributes = 'value';

export interface YesNoVoteInputStored extends JudoStored<YesNoVoteInput>, YesNoVoteInput {}
