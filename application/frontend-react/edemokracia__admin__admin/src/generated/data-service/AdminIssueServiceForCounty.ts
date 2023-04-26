import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminIssue,
  AdminCityQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminCountyStored,
  AdminCounty,
  AdminCityStored,
  AdminCity,
} from '../data-api';

/**
 * Relation Service for AdminIssue.county
 */
export interface AdminIssueServiceForCounty {
  getCounty(owner: JudoIdentifiable<AdminIssue>, mask?: string): Promise<AdminCountyStored>;
}
