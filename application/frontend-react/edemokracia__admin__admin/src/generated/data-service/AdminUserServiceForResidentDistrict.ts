import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminDistrict, AdminUser, AdminDistrictStored, AdminDistrictQueryCustomizer } from '../data-api';

/**
 * Relation Service for AdminUser.residentDistrict
 */
export interface AdminUserServiceForResidentDistrict {
  getResidentDistrict(owner: JudoIdentifiable<AdminUser>, mask?: string): Promise<AdminDistrictStored>;

  updateResidentDistrict(
    owner: JudoIdentifiable<AdminUser>,
    target: Partial<AdminDistrictStored>,
  ): Promise<AdminDistrictStored>;
}
