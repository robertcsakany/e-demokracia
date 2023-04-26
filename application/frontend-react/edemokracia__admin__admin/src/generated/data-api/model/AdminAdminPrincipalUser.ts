import { JudoStored } from '@judo/data-api-common';

export interface AdminAdminPrincipalUser {
  userName: string;
  email: string;
  firstName: string;
  isAdmin: boolean;
  lastName: string;
  phone?: null | string;
  created?: null | Date;
}
export type AdminAdminPrincipalUserAttributes =
  | 'userName'
  | 'email'
  | 'firstName'
  | 'isAdmin'
  | 'lastName'
  | 'phone'
  | 'created';

export interface AdminAdminPrincipalUserStored extends JudoStored<AdminAdminPrincipalUser>, AdminAdminPrincipalUser {}
