import { JudoIdentifiable } from '@judo/data-api-common';
import { YesNoAbstainVoteInputStored, YesNoAbstainVoteInput } from '../data-api';

/**
 * Class Service for YesNoAbstainVoteInput
 */
export interface YesNoAbstainVoteInputService {
  getTemplate(): Promise<YesNoAbstainVoteInput>;
}
