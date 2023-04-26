import { JudoIdentifiable } from '@judo/data-api-common';
import { CreateDebateInput, CreateDebateInputStored } from '../data-api';

/**
 * Class Service for CreateDebateInput
 */
export interface CreateDebateInputService {
  getTemplate(): Promise<CreateDebateInput>;
}
