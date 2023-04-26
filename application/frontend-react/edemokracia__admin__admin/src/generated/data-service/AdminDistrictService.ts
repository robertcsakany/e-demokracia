import { JudoIdentifiable } from '@judo/data-api-common';
import { AdminDistrict, AdminDistrictStored, AdminDistrictQueryCustomizer } from '../data-api';

/**
 * Class Service for AdminDistrict
 */
export interface AdminDistrictService {
  getTemplate(): Promise<AdminDistrict>;

  refresh(
    target: JudoIdentifiable<AdminDistrict>,
    queryCustomizer?: AdminDistrictQueryCustomizer,
  ): Promise<AdminDistrictStored>;

  delete(target: JudoIdentifiable<AdminDistrict>): Promise<void>;

  update(target: Partial<AdminDistrictStored>): Promise<AdminDistrictStored>;
}
