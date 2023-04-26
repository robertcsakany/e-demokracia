import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../data-api';

/**
 * Class Service for AdminCity
 */
export interface AdminCityService {
  getTemplate(): Promise<AdminCity>;

  refresh(target: JudoIdentifiable<AdminCity>, queryCustomizer?: AdminCityQueryCustomizer): Promise<AdminCityStored>;

  delete(target: JudoIdentifiable<AdminCity>): Promise<void>;

  update(target: Partial<AdminCityStored>): Promise<AdminCityStored>;

  getDistricts(
    target: JudoIdentifiable<AdminCity>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  getRangeForDistricts(
    owner?: JudoIdentifiable<AdminCity> | AdminCity,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;
}
