import {
  AdminCityQueryCustomizer,
  AdminCountyQueryCustomizer,
  AdminCountyStored,
  AdminCounty,
  AdminCityStored,
  AdminCity,
} from '../data-api';

/**
 * Access Relation Service for AdminAdmin.counties
 */
export interface AdminAdminServiceForCounties {
  listCounties(queryCustomizer?: AdminCountyQueryCustomizer): Promise<Array<AdminCountyStored>>;

  createCounties(target: AdminCounty): Promise<AdminCountyStored>;
}
