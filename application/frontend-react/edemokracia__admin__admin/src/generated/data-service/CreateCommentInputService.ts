import { JudoIdentifiable } from '@judo/data-api-common';
import { CreateCommentInputStored, CreateCommentInput } from '../data-api';

/**
 * Class Service for CreateCommentInput
 */
export interface CreateCommentInputService {
  getTemplate(): Promise<CreateCommentInput>;
}
