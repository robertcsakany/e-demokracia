import { JudoIdentifiable } from '@judo/data-api-common';
import { DistrictStored, District, DistrictQueryCustomizer } from '../data-api';

/**
 * Class Service for District
 */
export interface DistrictService {
  refresh(target: JudoIdentifiable<District>, queryCustomizer?: DistrictQueryCustomizer): Promise<DistrictStored>;
}
