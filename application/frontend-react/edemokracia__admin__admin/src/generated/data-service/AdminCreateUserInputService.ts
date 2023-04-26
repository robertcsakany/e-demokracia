import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminCreateUserInputStored, AdminCreateUserInput } from '../data-api';

/**
 * Class Service for AdminCreateUserInput
 */
export interface AdminCreateUserInputService {
  getTemplate(): Promise<AdminCreateUserInput>;
}
