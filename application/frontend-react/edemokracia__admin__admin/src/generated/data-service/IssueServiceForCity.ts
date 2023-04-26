import { JudoIdentifiable } from '@judo/data-api-common';
import {
  CityQueryCustomizer,
  Issue,
  CityStored,
  DistrictStored,
  City,
  DistrictQueryCustomizer,
  District,
} from '../data-api';

/**
 * Relation Service for Issue.city
 */
export interface IssueServiceForCity {
  getCity(owner: JudoIdentifiable<Issue>, mask?: string): Promise<CityStored>;
}
