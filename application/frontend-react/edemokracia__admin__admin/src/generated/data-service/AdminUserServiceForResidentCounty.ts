import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminCityQueryCustomizer,
  AdminUser,
  AdminCountyQueryCustomizer,
  AdminCountyStored,
  AdminCounty,
  AdminCityStored,
  AdminCity,
} from '../data-api';

/**
 * Relation Service for AdminUser.residentCounty
 */
export interface AdminUserServiceForResidentCounty {
  getResidentCounty(owner: JudoIdentifiable<AdminUser>, mask?: string): Promise<AdminCountyStored>;

  updateResidentCounty(
    owner: JudoIdentifiable<AdminUser>,
    target: Partial<AdminCountyStored>,
  ): Promise<AdminCountyStored>;
}
