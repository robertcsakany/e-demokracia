import { MaskBuilder } from './MaskBuilder';
import { AdminAdminPrincipalUserAttributes } from '../model';

export class AdminAdminPrincipalUserMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<AdminAdminPrincipalUserAttributes>) {
    super(props);
  }
}
