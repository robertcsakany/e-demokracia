import { JudoIdentifiable } from '@judo/data-api-common';
import { RatingVoteInput, RatingVoteInputStored } from '../data-api';

/**
 * Class Service for RatingVoteInput
 */
export interface RatingVoteInputService {
  getTemplate(): Promise<RatingVoteInput>;
}
