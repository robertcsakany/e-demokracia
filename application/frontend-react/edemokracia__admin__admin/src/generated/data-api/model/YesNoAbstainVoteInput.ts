import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaYesNoAbstainVoteValue } from './EdemokraciaYesNoAbstainVoteValue';

export interface YesNoAbstainVoteInput {
  value?: null | EdemokraciaYesNoAbstainVoteValue;
}
export type YesNoAbstainVoteInputAttributes = 'value';

export interface YesNoAbstainVoteInputStored extends JudoStored<YesNoAbstainVoteInput>, YesNoAbstainVoteInput {}
