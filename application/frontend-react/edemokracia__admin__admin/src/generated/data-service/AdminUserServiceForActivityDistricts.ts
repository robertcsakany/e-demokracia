import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminDistrict, AdminUser, AdminDistrictStored, AdminDistrictQueryCustomizer } from '../data-api';

/**
 * Relation Service for AdminUser.activityDistricts
 */
export interface AdminUserServiceForActivityDistricts {
  listActivityDistricts(
    owner: JudoIdentifiable<AdminUser>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<Array<AdminDistrictStored>>;

  updateActivityDistricts(
    owner: JudoIdentifiable<AdminUser>,
    target: Partial<AdminDistrictStored>,
  ): Promise<AdminDistrictStored>;
}
