import { JudoIdentifiable } from '@judo/data-api-common';
import { YesNoVoteInput, YesNoVoteInputStored } from '../data-api';

/**
 * Class Service for YesNoVoteInput
 */
export interface YesNoVoteInputService {
  getTemplate(): Promise<YesNoVoteInput>;
}
