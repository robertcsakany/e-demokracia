import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminAdminPrincipalUserStored,
  AdminAdminPrincipalUserQueryCustomizer,
  AdminAdminPrincipalUser,
} from '../data-api';

/**
 * Class Service for AdminAdminPrincipalUser
 */
export interface AdminAdminPrincipalUserService {
  refresh(
    target: JudoIdentifiable<AdminAdminPrincipalUser>,
    queryCustomizer?: AdminAdminPrincipalUserQueryCustomizer,
  ): Promise<AdminAdminPrincipalUserStored>;
}
