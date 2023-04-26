import { JudoIdentifiable } from '@judo/data-api-common';
import { CityQueryCustomizer, Issue, CityStored, City, CountyQueryCustomizer, County, CountyStored } from '../data-api';

/**
 * Relation Service for Issue.county
 */
export interface IssueServiceForCounty {
  getCounty(owner: JudoIdentifiable<Issue>, mask?: string): Promise<CountyStored>;
}
