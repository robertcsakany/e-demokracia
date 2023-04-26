import { JudoStored } from '@judo/data-api-common';

export interface AdminCreateUserInput {
  userName: string;
  email: string;
  hasAdminAccess: boolean;
  firstName: string;
  lastName: string;
  phone?: null | string;
}
export type AdminCreateUserInputAttributes =
  | 'userName'
  | 'email'
  | 'hasAdminAccess'
  | 'firstName'
  | 'lastName'
  | 'phone';

export interface AdminCreateUserInputStored extends JudoStored<AdminCreateUserInput>, AdminCreateUserInput {}
