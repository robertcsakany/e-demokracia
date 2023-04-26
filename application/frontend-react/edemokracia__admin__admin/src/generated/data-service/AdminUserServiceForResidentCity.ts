import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCityQueryCustomizer,
  AdminDistrict,
  AdminUser,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../data-api';

/**
 * Relation Service for AdminUser.residentCity
 */
export interface AdminUserServiceForResidentCity {
  getResidentCity(owner: JudoIdentifiable<AdminUser>, mask?: string): Promise<AdminCityStored>;

  updateResidentCity(owner: JudoIdentifiable<AdminUser>, target: Partial<AdminCityStored>): Promise<AdminCityStored>;
}
