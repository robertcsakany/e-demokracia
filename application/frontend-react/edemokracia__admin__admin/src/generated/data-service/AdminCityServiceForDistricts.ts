import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminDistrict, AdminDistrictStored, AdminCity, AdminDistrictQueryCustomizer } from '../data-api';

/**
 * Relation Service for AdminCity.districts
 */
export interface AdminCityServiceForDistricts {
  listDistricts(
    owner: JudoIdentifiable<AdminCity>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  createDistricts(owner: JudoIdentifiable<AdminCity>, target: AdminDistrict): Promise<AdminDistrictStored>;

  deleteDistricts(owner: JudoIdentifiable<AdminCity>, target: JudoIdentifiable<AdminDistrict>): Promise<void>;

  updateDistricts(
    owner: JudoIdentifiable<AdminCity>,
    target: Partial<AdminDistrictStored>,
  ): Promise<AdminDistrictStored>;
}
