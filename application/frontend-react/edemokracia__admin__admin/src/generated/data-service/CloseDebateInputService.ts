import { JudoIdentifiable } from '@judo/data-api-common';
import { CloseDebateInputStored, CloseDebateInput } from '../data-api';

/**
 * Class Service for CloseDebateInput
 */
export interface CloseDebateInputService {
  getTemplate(): Promise<CloseDebateInput>;
}
