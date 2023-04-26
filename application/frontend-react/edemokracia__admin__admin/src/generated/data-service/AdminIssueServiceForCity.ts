import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssue,
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminIssue.city
 */
export interface AdminIssueServiceForCity {
  getCity(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminCityStored>;
}
