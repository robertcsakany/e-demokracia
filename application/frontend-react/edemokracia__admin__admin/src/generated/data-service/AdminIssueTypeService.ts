import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminIssueType, AdminIssueTypeQueryCustomizer, AdminIssueTypeStored } from '../data-api';

/**
 * Class Service for AdminIssueType
 */
export interface AdminIssueTypeService {
  getTemplate(): Promise<AdminIssueType>;

  refresh(
    target: JudoIdentifiable<AdminIssueType>,
    queryCustomizer?: AdminIssueTypeQueryCustomizer,
  ): Promise<AdminIssueTypeStored>;

  delete(target: JudoIdentifiable<AdminIssueType>): Promise<void>;

  update(target: Partial<AdminIssueTypeStored>): Promise<AdminIssueTypeStored>;
}
