import { JudoIdentifiable } from '@judo/data-api-common';
import { IssueType, IssueTypeQueryCustomizer, IssueTypeStored } from '../data-api';

/**
 * Class Service for IssueType
 */
export interface IssueTypeService {
  refresh(target: JudoIdentifiable<IssueType>, queryCustomizer?: IssueTypeQueryCustomizer): Promise<IssueTypeStored>;
}
