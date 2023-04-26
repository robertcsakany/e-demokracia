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
 * Relation Service for AdminUser.activityCities
 */
export interface AdminUserServiceForActivityCities {
  listActivityCities(
    owner: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminCityQueryCustomizer,
  ): Promise<Array<AdminCityStored>>;

  updateActivityCities(owner: JudoIdentifiable<AdminUser>, target: Partial<AdminCityStored>): Promise<AdminCityStored>;
}
