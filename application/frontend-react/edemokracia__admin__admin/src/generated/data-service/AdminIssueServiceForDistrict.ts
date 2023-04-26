import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminIssue, AdminDistrict, AdminDistrictStored, AdminDistrictQueryCustomizer } from '../data-api';

/**
 * Relation Service for AdminIssue.district
 */
export interface AdminIssueServiceForDistrict {
  getDistrict(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminDistrictStored>;
}
