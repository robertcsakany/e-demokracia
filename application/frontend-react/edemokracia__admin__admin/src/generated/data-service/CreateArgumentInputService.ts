import { JudoIdentifiable } from '@judo/data-api-common';
import { CreateArgumentInputStored, CreateArgumentInput } from '../data-api';

/**
 * Class Service for CreateArgumentInput
 */
export interface CreateArgumentInputService {
  getTemplate(): Promise<CreateArgumentInput>;
}
