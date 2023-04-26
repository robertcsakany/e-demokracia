import { JudoIdentifiable } from '@judo/data-api-common';
import { Issue, DistrictStored, DistrictQueryCustomizer, District } from '../data-api';

/**
 * Relation Service for Issue.district
 */
export interface IssueServiceForDistrict {
  getDistrict(owner: JudoIdentifiable<Issue>, mask?: string): Promise<DistrictStored>;
}
