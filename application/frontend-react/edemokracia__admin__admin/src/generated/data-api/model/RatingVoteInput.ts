import { JudoStored } from '@judo/data-api-common';

export interface RatingVoteInput {
  value?: null | number;
}
export type RatingVoteInputAttributes = 'value';

export interface RatingVoteInputStored extends JudoStored<RatingVoteInput>, RatingVoteInput {}
